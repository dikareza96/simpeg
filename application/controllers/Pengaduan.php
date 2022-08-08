<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengaduan extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url','file', 'text'));
		$this->load->model('Resource');
		date_default_timezone_set('Asia/Jakarta');
		
		// if($this->session->userdata('level') <> 'admin')
		// {
		// 	redirect('backend/login');
		// }
	}



	protected $table = 'pengaduan'; 
	// $user  = $this->session->userdata('name');
	
	function index()
	{
		if($this->session->userdata('level')=='pegawai'){
		// $tanggalHariIni = new DateTime('now');
		// $date = $this->format('Y-m-d H:i:s');
			$get_user_id = $this->session->userdata('id');
			$module = $this->table;
		// $data['tanggal'] = $this->$date; 
			$data['route'] = $this->table;
			$data[$module] = $this->db->query("
				SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at,b.id as id_user,b.nama_lengkap as nama_user
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				where a.user_pelapor = '$get_user_id'
				GROUP BY a.created_at DESC ")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='admin'){

		// $tanggalHariIni = new DateTime('now');
		// $date = $this->format('Y-m-d H:i:s');
			$get_user_id = $this->session->userdata('id');
			$module = $this->table;
		// $data['tanggal'] = $this->$date; 
			$data['route'] = $this->table;
			$data[$module] = $this->db->query("
				SELECT *
				FROM pengaduan
				")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}
		// $date = new Datetime('now');
		// echo $date->format('Y-m-d H:i:s');
// var_dump($date);
	}
	function create()
	{
		$module = $this->table;
		$data['route'] = $this->table;
		$data['status'] = '';
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/create',$data);
		$this->load->view('backend/template/footer');
	}
	function store()
	{
		$module = $this->table;
		$tanggalHariIni = new DateTime('now');
		
		$this->form_validation->set_rules('tersangka', 'Tersangka', 'required');
		$this->form_validation->set_rules('waktu_kejadian', 'Waktu kejadian', 'required');
		$this->form_validation->set_rules('tempat_kejadian', 'Tempat kejadian', 'required');
		$this->form_validation->set_rules('detail_laporan', 'Detail Laporan', 'required');
		// $this->form_validation->set_rules('image', 'Foto/Video', 'required');


		$data['status']="sukses";
		$data['error']="";
		$this->load->library('upload');
		$nmfile = "file_".time(); 
		$config['upload_path'] = './assets/uploads/'; 
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|mp4|mkv|webm|flv|ogg|ogv|avi|mov|wmv|m4p|mpeg|3gp'; 
		$config['max_size']             = 2000;
		$config['max_width']            = 2048;
		$config['max_height']           = 2048;
		$config['file_name'] = $nmfile;
		$this->upload->initialize($config);
		if ($this->form_validation->run()== false){
			$data["status"]="error";
			$data["error"]= validation_errors();
			$this->session->set_flashdata('error', 'Gagal menyimpan');
			redirect(''.$module.'/create');			

		}else{
			if(isset($_FILES['image'])){
				if($_FILES['image']['name'])
				{
					if ($this->upload->do_upload('image'))
					{
						$gbr = $this->upload->data();

					} 

				}
			}


		}
		if($data["status"]=="sukses"){
			$tersangka = $this->input->post('tersangka');
			$waktu_kejadian = $this->input->post('waktu_kejadian');
			$tempat_kejadian = $this->input->post('tempat_kejadian');
			$detail_laporan = $this->input->post('detail_laporan');

			$data = array(
				'tersangka' => $tersangka,
				'waktu_kejadian' => $waktu_kejadian,
				'tempat_kejadian' => $tempat_kejadian,
				'detail_laporan' => $detail_laporan,
				'user_pelapor' =>$this->session->userdata('id'),
				'status' => 0,
				'created_at' => date('Y-m-d H:i:s'),
									// 'created_at' => $date->format('Y-m-d H:i:s'),
									// 'user_pelapor' => 'admin',
				'file' =>$gbr['file_name']

			);
			$this->Resource->store($data,$this->table);
			$this->session->set_flashdata('sukses', 'Sukses menyimpan');
			redirect(''.$module.'/index');	

		}
		

		
	}
	function edit($id){ 
		$module = $this->table;
		$data['route'] = $this->table;
		$where = array('id' => $id);
		$data['tindak_lanjut_komite'] = $this->db->query("SELECT
			*
			FROM
			tindak_lanjut 
			where id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result();

		$vote_jenis_laporan = $this->db->query("SELECT
			a.jenis_laporan,
			COUNT(a.jenis_laporan) AS vote_jenis_laporan 
			FROM
			tindak_lanjut a
			INNER JOIN pengaduan b  ON a.id_pengaduan= b.id
			where a.id_pengaduan  = '$id'
			GROUP BY 
			jenis_laporan
			ORDER BY 
			vote_jenis_laporan DESC
			LIMIT 1")->result_array();
		$vote_jenis_komplain = $this->db->query("SELECT
			a.jenis_komplain,
			COUNT(a.jenis_komplain) AS vote_jenis_komplain

			FROM
			tindak_lanjut a
			INNER JOIN pengaduan b  ON a.id_pengaduan= b.id
			where a.id_pengaduan  = '$id'
			GROUP BY 
			jenis_komplain
			ORDER BY 
			vote_jenis_komplain DESC
			LIMIT 1")->result_array();

		foreach ($vote_jenis_laporan as $key => $val) {
			$vote1 []= $val;
		}
		foreach ($vote_jenis_komplain as $key => $val) {
			$vote2 []= $val;
		}
		if(!empty($vote1[0]['jenis_laporan'])){

			$data['jenis_laporan'] = $vote1[0]['jenis_laporan'];
		}
		if(!empty($vote2[0]['jenis_komplain'])){

			$data['jenis_komplain'] = $vote2[0]['jenis_komplain'];
			// $jenis_komplain = $tindak[0]['jenis_komplain'];
		}


		$data[$module] = $this->Resource->edit($where,$this->table)->result();
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/edit',$data);
		$this->load->view('backend/template/footer');
	}
	function update(){
		
		$module = $this->table;
		$this->load->library('upload');
		$nmfile = "file_".time(); 
		$config['upload_path'] = './assets/uploads/'; 
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|mp4|mkv|webm|flv|ogg|ogv|avi|mov|wmv|m4p|mpeg|3gp'; 
		$config['max_size']             = 5000;
		$config['max_width']            = 2048;
		$config['max_height']           = 2048;
		$config['file_name'] = $nmfile;
		$this->upload->initialize($config);

		$id = $this->input->post('id');
		$tersangka = $this->input->post('tersangka');
		$waktu_kejadian = $this->input->post('waktu_kejadian');
		$tempat_kejadian = $this->input->post('tempat_kejadian');

		$data = array(
			'tersangka' => $tersangka,
			'waktu_kejadian' => $waktu_kejadian,
			'tempat_kejadian' => $tempat_kejadian,

		);
		if($_FILES['image']['name'])
		{
			if ($this->upload->do_upload('image'))
			{

				$gbr = $this->upload->data();
				$data['file'] = $gbr['file_name'];
				
				
			} 
		}

		$where = array(
			'id' => $id
		);
		$this->Resource->update($where,$data,$this->table);
		redirect(''.$module.'/index');
	}
	function destroy ($id){ 
		$module = $this->table;
		$where = array('id' => $id);
		$this->Resource->destroy($where,$this->table);


		redirect(''.$module.'/index'); 
	}
	
	



}