<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	
	
	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url','file', 'text'));
		$this->load->model('Resource');
		date_default_timezone_set('Asia/Jakarta');
		
		// if($this->session->userdata('level') <> 'admin')
		// 		{
		// 			redirect('backend/login');
		// 		}
	}

	protected $table = 'pengaduan'; 
	protected $module = 'laporan';
	
	function index()
	{
		if($this->session->userdata('level')=='karumkit' || $this->session->userdata('level')=='admin'){
			$module = $this->module;

			$masuk = $this->db->query("SELECT * FROM pengaduan WHERE status = 0 AND delete_status = 0");
			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status IN (1,2) AND delete_status = 0");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 3 AND delete_status = 0');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				WHERE a.delete_status = '0'
				GROUP BY a.created_at DESC
				")->result();
			// $data[$module] = $this->Resource->show($this->table)->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='komite_medik'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			$masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at
				FROM pengaduan a 
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level' AND a.delete_status = '0'
				and a.status = '1'
				");
			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status = 2");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 3');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level'
				AND a.status = '1'
				")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='komite_tenaga'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			$masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at
				FROM pengaduan a 
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level'");
			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status = 1");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 2');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level' AND a.delete_status = '0'
				")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='komite_keperawatan'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			$masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at
				FROM pengaduan a 
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level'");
			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status = 1");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 2');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				INNER JOIN transaksi c  ON a.id = c.id_pengaduan
				where c.id_komite = '$get_user_level' AND a.delete_status = '0'
				")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
			
		}elseif($this->session->userdata('level')=='spi'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			// $masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
			// 	FROM pengaduan a 
			// 	INNER JOIN tb_users b  ON a.user_pelapor = b.id
			// 	WHERE a.delete_status = '0'
			// 	GROUP BY a.created_at DESC");
			$masuk = $this->db->query("SELECT * FROM pengaduan WHERE status = 0 AND delete_status = 0");

			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status IN (1,2) AND delete_status = 0");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 3 AND delete_status = 0');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				WHERE a.delete_status = '0'
				GROUP BY a.created_at DESC")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='humas'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			// $masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at
			// 	FROM pengaduan a 
			// 	INNER JOIN tb_users b  ON a.user_pelapor = b.id
			// 	WHERE a.delete_status = '0'
			// 	GROUP BY a.created_at DESC");
			$masuk = $this->db->query("SELECT * FROM pengaduan WHERE status = 0 AND delete_status = 0");
			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status IN (1,2) AND delete_status = 0");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 3 AND delete_status = 0');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				WHERE a.delete_status = '0'
				GROUP BY a.created_at DESC")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}elseif($this->session->userdata('level')=='komite_etik'){
			$get_user_level = $this->session->userdata('level');
			$module = $this->module;

			// $masuk = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at
			// 	FROM pengaduan a 
			// 	INNER JOIN tb_users b  ON a.user_pelapor = b.id
			// 	WHERE a.delete_status = '0'
			// 	GROUP BY a.created_at DESC");
			$masuk = $this->db->query("SELECT * FROM pengaduan WHERE status = 0 AND delete_status = 0");

			$data['masuk'] = $masuk->num_rows();

			$proses = $this->db->query("SELECT  * FROM pengaduan WHERE status IN (1,2) AND delete_status = 0");
			$data['proses'] = $proses->num_rows();

			$selesai = $this->db->query('SELECT  * FROM pengaduan  WHERE status = 3 AND delete_status = 0');
			$data['selesai'] = $selesai->num_rows();
			
			$data['route'] = $this->module;
			$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at ,b.nama_lengkap as korban
				FROM pengaduan a 
				INNER JOIN tb_users b  ON a.user_pelapor = b.id
				WHERE a.delete_status = '0'
				GROUP BY a.created_at DESC")->result();
			$this->load->view('backend/template/header');
			$this->load->view('backend/template/sidebar');
			$this->load->view('backend/modules/'.$module.'/index',$data);
			$this->load->view('backend/template/footer');
		}else{
			echo "Anda tidak berhak mengakses halaman ini";

		}
		
	}
	function create()
	{
		$module = $this->table;
		$data['route'] = $this->table;
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/create',$data);
		$this->load->view('backend/template/footer');
	}
	function store()
	{
		$module = $this->table;
		$this->form_validation->set_rules('content', 'Judul', 'required');
		$this->form_validation->set_rules('name', 'Isi Berita', 'required');
		$this->form_validation->set_rules('profesi', 'Kategori', 'required');
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
		if ($this->form_validation->run() == FALSE){
			$data["status"]="error";
			$data["error"]=validation_errors();				
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
			$content = $this->input->post('content');
			$name = $this->input->post('name');
			$profesi = $this->input->post('profesi');

			$data = array(
				'content' => $content,
				'profesi' => $profesi,
				'name' => $name,
				'img' =>$gbr['file_name']

			);
			$this->Resource->store($data,$this->table);  
		}
		

		redirect(''.$module.'/index');
	}
	function edit($id){ 
		$user_komite = $this->session->userdata('level');
		$module = $this->module;
		$data['route'] = $this->table;
		$where = array('id' => $id);
		$data['komite'] = $this->db->query("SELECT c.id_komite
			FROM pengaduan a 
			INNER JOIN transaksi c  ON a.id = c.id_pengaduan
			where a.id = '4'")->result();
		// kirim
		$komite = $this->db->query("SELECT c.id_komite
			FROM pengaduan a 
			INNER JOIN transaksi c  ON a.id = c.id_pengaduan
			where a.id = '$id'
			order by c.id_komite ASC")->result_array();
		foreach ($komite as $key => $val) {
			$rows []= $val;
		}
		if(!empty($rows[0]['id_komite'])){

			$data['komite1'] =  $rows[0]['id_komite']; 
		}
		if(!empty($rows[1]['id_komite'])){

			$data['komite2'] =  $rows[1]['id_komite'];

		}if(!empty($rows[2]['id_komite'])){

			$data['komite3'] =  $rows[2]['id_komite'];

		}if(!empty($rows[3]['id_komite'])){

			$data['komite4'] =  $rows[3]['id_komite'];
         	// $komite4 =  $rows[3]['id_komite'];
		}
		$list_tindak_lanjut = $this->db->query("SELECT
			a.id_pengaduan,a.tindak_lanjut,a.id_komite, a.created_at

			FROM
			tindak_lanjut a
			INNER JOIN pengaduan b  ON a.id_pengaduan= b.id
			where a.id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result_array();

		
		foreach ($list_tindak_lanjut as $key => $val) {
			$vote3 []= $val;
		}
		
		// TINDAK LANJUT
		$tindak_lanjut = $this->db->query("SELECT a.jenis_komplain,a.jenis_laporan,a.tindak_lanjut
			FROM tindak_lanjut a
			INNER JOIN pengaduan b  ON a.id_pengaduan= b.id
			where a.id_pengaduan = '$id' AND a.id_komite = '$user_komite'")->result_array();
		$data['tindak_lanjut_komite'] = $this->db->query("SELECT
			*
			FROM
			tindak_lanjut 
			where id_pengaduan  = '$id' and id_komite NOT IN ('$user_komite')
			GROUP BY
			id_komite ASC")->result();

		foreach ($tindak_lanjut as $key => $val) {
			$tindak []= $val;
		}
		if(!empty($tindak[0]['jenis_laporan'])){

			$data['jenis_laporan'] = $tindak[0]['jenis_laporan'];
		}if(!empty($tindak[0]['jenis_komplain'])){

			$data['jenis_komplain'] = $tindak[0]['jenis_komplain'];
			// $jenis_komplain = $tindak[0]['jenis_komplain'];
		}if(!empty($tindak[0]['tindak_lanjut'])){

			$data['tindak_lanjut'] = $tindak[0]['tindak_lanjut'];
			// $tindaks = $tindak[0]['tindak_lanjut'];
		}
		// nama komite parse
		if(!empty($vote3[0]['id_komite'])){
			$data['nama_komite1'] = $vote3[0]['id_komite'];
			$etik = $vote3[0]['id_komite'];
		}if(!empty($vote3[1]['id_komite'])){
			$data['nama_komite2'] = $vote3[1]['id_komite'];
			$keperawatan = $vote3[1]['id_komite'];
		}if(!empty($vote3[2]['id_komite'])){
			$data['nama_komite3'] = $vote3[2]['id_komite'];
			$medik = $vote3[2]['id_komite'];
		}if(!empty($vote3[3]['id_komite'])){
			$data['nama_komite4'] = $vote3[3]['id_komite'];
			$tenaga = $vote3[3]['id_komite'];
		}

		
		
		 // var_dump($jenis_komplain,$tindaks);


		// TINDAK LANJUT
		// foreach ($tindak_lanjut as $key => $val) {
		// 	$tindak []= $val;
		// }

		  // var_dump($komite4);

    			// $data['komite1'] =  $rows[0]['id_komite'];    
				// $data['komite2'] =  $rows[1]['id_komite'];
				// $data['komite3'] =  $rows[2]['id_komite'];
    			// $data['komite4'] =  $rows[3]['id_komite'];

         // $komite3 =  $rows[2]['id_komite'];
         // $komite4 =  $rows[3]['id_komite'];
		
		// header('Content-Type: application/json');

        // $dump =  json_encode($komite);

		// $data[$module] = $this->Resource->edit($where,$this->table)->result();
		$data[$module] = $this->db->query("SELECT a.id,a.tersangka,a.waktu_kejadian,a.tempat_kejadian,a.detail_laporan,a.file,a.user_pelapor,a.jenis_laporan, a.tembusan,a.status, a.jenis_komplain,a.rekomendasi,a.tindak_lanjut_komite,a.tindak_lanjut_karumkit, a.created_at,b.nama_lengkap as korban
			FROM pengaduan a 
			INNER JOIN tb_users b  ON a.user_pelapor = b.id
			where a.id = '$id'
			")->result();
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/edit',$data);
		$this->load->view('backend/template/footer');
	}
	function tindak_lanjut($id){ 
		$module = $this->module;
		$data['route'] = $this->table;
		$where = array('id' => $id);

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
		$list_tindak_lanjut = $this->db->query("SELECT *
			FROM
			tindak_lanjut a
			where a.id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result_array();
		$data['tindak_lanjut_komite'] = $this->db->query("SELECT
			*
			FROM
			tindak_lanjut 
			where id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result();

		foreach ($vote_jenis_laporan as $key => $val) {
			$vote1 []= $val;
		}
		foreach ($vote_jenis_komplain as $key => $val) {
			$vote2 []= $val;
		}
		foreach ($list_tindak_lanjut as $key => $val) {
			$vote3 []= $val;
		}
		foreach ($list_tindak_lanjut as $key => $val) {
			$vote4 []= $val;
		}
		if(!empty($vote1[0]['jenis_laporan'])){

			$data['jenis_laporan'] = $vote1[0]['jenis_laporan'];
		}if(!empty($vote2[0]['jenis_komplain'])){

			$data['jenis_komplain'] = $vote2[0]['jenis_komplain'];
			// $jenis_komplain = $tindak[0]['jenis_komplain'];
		}if(!empty($vote3[0]['tindak_lanjut'])){

			$data['tindak_lanjut1'] = $vote3[0]['tindak_lanjut'];
			$tindak1 = $vote3[0]['tindak_lanjut'];
			
		}if(!empty($vote3[1]['tindak_lanjut'])){

			$data['tindak_lanjut2'] = $vote3[1]['tindak_lanjut'];
			$tindak2 = $vote3[1]['tindak_lanjut'];

			
		}if(!empty($vote3[2]['tindak_lanjut'])){

			$data['tindak_lanjut3'] = $vote3[2]['tindak_lanjut'];
			$tindak3 = $vote3[2]['tindak_lanjut'];

			
		}if(!empty($vote3[3]['tindak_lanjut'])){
			$data['tindak_lanjut4'] = $vote3[3]['tindak_lanjut'];
			$tindak4 = $vote3[3]['tindak_lanjut'];

		}
		// nama komite parse
		if(!empty($vote3[0]['id_komite'])){
			$data['nama_komite1'] = $vote3[0]['id_komite'];
			$index1 = $vote3[0]['id_komite'];
		}if(!empty($vote3[1]['id_komite'])){
			$data['nama_komite2'] = $vote3[1]['id_komite'];
			$index2 = $vote3[1]['id_komite'];
		}if(!empty($vote3[2]['id_komite'])){
			$data['nama_komite3'] = $vote3[2]['id_komite'];
			$index3 = $vote3[2]['id_komite'];
		}if(!empty($vote3[3]['id_komite'])){
			$data['nama_komite4'] = $vote3[3]['id_komite'];
			$index4 = $vote3[3]['id_komite'];
		}

		// var_dump($index2);
		//var_dump($etik, $keperawatan, $medik, $tenaga);
		$data[$module] = $this->Resource->edit($where,$this->table)->result();
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/tindak_lanjut',$data);
		$this->load->view('backend/template/footer');
	}
	function tutup_aduan($id){ 
		$module = $this->module;
		$data['route'] = $this->table;
		$where = array('id' => $id);
		
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
		$data['tindak_lanjut_komite'] = $this->db->query("SELECT
			*
			FROM
			tindak_lanjut 
			where id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result();
		$list_tindak_lanjut = $this->db->query("SELECT
			a.id_pengaduan,a.tindak_lanjut,a.id_komite, a.created_at
			FROM
			tindak_lanjut a
			-- INNER JOIN pengaduan b  ON a.id_pengaduan= b.id
			where a.id_pengaduan  = '$id'
			GROUP BY
			id_komite ASC")->result_array();

		foreach ($vote_jenis_laporan as $key => $val) {
			$vote1 []= $val;
		}
		foreach ($vote_jenis_komplain as $key => $val) {
			$vote2 []= $val;
		}
		foreach ($list_tindak_lanjut as $key => $val) {
			$vote3 []= $val;
		}
		foreach ($list_tindak_lanjut as $key => $val) {
			$vote4 []= $val;
		}
		if(!empty($vote1[0]['jenis_laporan'])){

			$data['jenis_laporan'] = $vote1[0]['jenis_laporan'];
		}if(!empty($vote2[0]['jenis_komplain'])){

			$data['jenis_komplain'] = $vote2[0]['jenis_komplain'];
			// $jenis_komplain = $tindak[0]['jenis_komplain'];
		}

		//list_tindak_lanjut
		if(!empty($vote3[0]['tindak_lanjut'])){

			$data['tindak_lanjut1'] = $vote3[0]['tindak_lanjut'];
			$tindak1 = $vote3[0]['tindak_lanjut'];
			
		}if(!empty($vote3[1]['tindak_lanjut'])){

			$data['tindak_lanjut2'] = $vote3[1]['tindak_lanjut'];
			$tindak2 = $vote3[1]['tindak_lanjut'];

			
		}if(!empty($vote3[2]['tindak_lanjut'])){

			$data['tindak_lanjut3'] = $vote3[2]['tindak_lanjut'];
			$tindak3 = $vote3[2]['tindak_lanjut'];

			
		}if(!empty($vote3[3]['tindak_lanjut'])){
			$data['tindak_lanjut4'] = $vote3[3]['tindak_lanjut'];
			$tindak4 = $vote3[3]['tindak_lanjut'];

		}
		// nama komite parse
		if(!empty($vote3[0]['id_komite'])){
			$data['nama_komite1'] = $vote3[0]['id_komite'];
			$etik = $vote3[0]['id_komite'];
		}if(!empty($vote3[1]['id_komite'])){
			$data['nama_komite2'] = $vote3[1]['id_komite'];
			$keperawatan = $vote3[1]['id_komite'];
		}if(!empty($vote3[2]['id_komite'])){
			$data['nama_komite3'] = $vote3[2]['id_komite'];
			$medik = $vote3[2]['id_komite'];
		}if(!empty($vote3[3]['id_komite'])){
			$data['nama_komite4'] = $vote3[3]['id_komite'];
			$tenaga = $vote3[3]['id_komite'];
		}
		// var_dump($etik);
		$data[$module] = $this->Resource->edit($where,$this->table)->result();
		$this->load->view('backend/template/header');
		$this->load->view('backend/template/sidebar');
		$this->load->view('backend/modules/'.$module.'/tutup_aduan',$data);
		$this->load->view('backend/template/footer');
	}

	function update(){
		
		$module = $this->table;
		$get_id = $this->input->post('id');
		
		
		if($this->session->userdata('level')=='spi' || $this->session->userdata('level')=='humas' || $this->session->userdata('level')=='komite_etik'){
			// $this->form_validation->set_rules('jenis_laporan', 'Jenis Laporan', 'required');
			$this->form_validation->set_rules('jenis_komplain', 'Jenis Komplain', 'required');
			$this->form_validation->set_rules('tindak_lanjut_komite', 'Evaluasi', 'required');

		}elseif($this->session->userdata('level')=='karumkit' || $this->session->userdata('level')=='admin'){
			// $this->form_validation->set_rules('tindak_lanjut_karumkit', 'Keputusan karumkit', 'required');
			// $this->form_validation->set_rules('status', 'Status', 'required');
			if($this->input->post('tindak_lanjut_karumkit') == true){
				$this->form_validation->set_rules('tindak_lanjut_karumkit', 'Keputusan karumkit', 'required');

			}else{
				
				$this->form_validation->set_rules('status', 'Status', 'required');

			}
		}
		
		$data['status']="sukses";
		$data['error']="";

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
		$check = $this->input->post('komite');
		if($this->session->userdata('level')=='spi' || $this->session->userdata('level')=='humas' || $this->session->userdata('level')=='komite_etik'){
			// $jenis_laporan = $this->input->post('jenis_laporan');
			$jenis_komplain = $this->input->post('jenis_komplain');
			$tindak_lanjut_komite = $this->input->post('tindak_lanjut_komite');
		}elseif($this->session->userdata('level')=='karumkit' || $this->session->userdata('level')=='admin'){

			if($this->input->post('tindak_lanjut_karumkit') == true){
				$tindak_lanjut_karumkit = $this->input->post('tindak_lanjut_karumkit');

			}else{
				
				$final = $this->input->post('status');
			}
			
		}
		// $json= json_encode($tindak_lanjut_karumkit);
		// echo ($json);
		if ($this->form_validation->run()== true){
			if(!empty($check)){
				foreach ($check as $row) {
					$data = array(
						'id_pengaduan' => $id,
						'id_komite' => $row

					);
					$this->Resource->komite(array('id_pengaduan'=> $id,'id_komite' => $row  ));
				}

				$data = array(
					'status' => "1",
					
				);
				$where = array(
					'id' => $id
				);
				$this->Resource->update($where,$data,'pengaduan');
				$this->session->set_flashdata('sukses', 'Sukses menyimpan');

				redirect('laporan/index');
			}elseif(!empty($jenis_komplain)){

				$data = array(
					'id_pengaduan' => $id,
					'id_komite' => $this->session->userdata('level'),
					// 'jenis_laporan' => $jenis_laporan,
					'jenis_komplain' => $jenis_komplain,
					'tindak_lanjut' => $tindak_lanjut_komite,
					'created_at' =>	date('Y-m-d H:i:s')						
				);
				$this->Resource->store($data,'tindak_lanjut' );

				$update_status = array(
					'status' => "1",

				);
				$where = array(
					'id' => $id
				);
				$this->Resource->update($where,$update_status,'pengaduan');
				$this->session->set_flashdata('sukses', 'Sukses menyimpan');

				redirect('laporan/index');

			}elseif(!empty($tindak_lanjut_karumkit)){
				$data = array(
					'tindak_lanjut_karumkit' => $tindak_lanjut_karumkit,
					'status' => "2"

				);
				
				$where = array(
					'id' => $id
				);
				$this->Resource->update($where,$data,'pengaduan');
				$this->session->set_flashdata('sukses', 'Sukses menyimpan');

				redirect('laporan/index');

			}elseif(!empty($final)){

				$data = array(
					'status' => $final,
				);
				$where = array(
					'id' => $id
				);
				$this->Resource->update($where,$data,'pengaduan');
				$this->session->set_flashdata('sukses', 'Sukses menyimpan');
				redirect('laporan/index');
			}			

		}else{
			// if(isset($_FILES['image'])){
			// 	if($_FILES['image']['name'])
			// 	{
			// 		if ($this->upload->do_upload('image'))
			// 		{
			// 			$gbr = $this->upload->data();

			// 		} 

			// 	}
			// }
			
			if($this->session->userdata('level')=='karumkit'){
				$data["status"]="error";
				$data["error"]= validation_errors();
				$this->session->set_flashdata('error', 'Gagal menyimpan');
				redirect('laporan/tindak_lanjut/'.$get_id);	
			}else{
				$data["status"]="error";
				$data["error"]= validation_errors();
				$this->session->set_flashdata('error', 'Gagal menyimpan');
				redirect('laporan/edit/'.$get_id);
			}
		}
		// if($data["status"]=="sukses"){

		// }


	}


	function destroy ($id){ 
		$module = $this->table;
		$where = array('id' => $id);
		$this->Resource->destroy($where,$this->table);


		redirect(''.$module.'/index'); 
	}
	
	



}