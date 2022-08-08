<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    
    
    function __construct()
    {
         parent::__construct();
        $this->load->model('Resource');
        

    }

    protected $table = 'tb_users'; 

    function index()
    {
        $this->load->view('backend/modules/login/index');
    }
    function proses() {
            $usr = $this->input->get('nip');
            $psw = md5($this->input->get('pass_login'));
            $cek = $this->Resource->cek($usr, $psw);
            if ($cek->num_rows() == 1) {
                //login berhasil, buat session
                foreach ($cek->result() as $qad) {
                    $sess_data['id']            = $qad->id;
                    $sess_data['nip']           = $qad->nip;
                    $sess_data['foto']           = $qad->foto;
                    $sess_data['pass_login']    = $qad->pass_login;
                    $sess_data['nama_lengkap']  = $qad->nama_lengkap;
                    $sess_data['level']         = $qad->level;
                    $sess_data['login_terakhir']         = $qad->login_terakhir;
                    $sess_data['status_user']         = $qad->status_user;
                    $sess_data['status']         = $qad->status;
                    $sess_data['kd_userlevel']         = $qad->kd_userlevel;
                    $sess_data['token']         = $qad->token;
                    $sess_data['email']         = $qad->email;
                    $sess_data['status_login']         = $qad->status_login;

                    // var_dump($nip);
                    $this->session->set_userdata($sess_data);
                }
                if($this->session->userdata('level') == 'admin')
                {
                  redirect('pengaduan/index');
                }elseif($this->session->userdata('level') == 'karumkit'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'pegawai'){
                    redirect('pengaduan/index');
                }elseif($this->session->userdata('level') == 'komite_medik'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'komite_etik'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'komite_tenaga'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'komite_keperawatan'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'spi'){
                    redirect('laporan/index');
                }elseif($this->session->userdata('level') == 'humas'){
                    redirect('laporan/index');
                }
                
            } else {
                $this->session->set_flashdata('result_login', '<br>Username atau Password yang anda masukkan salah.');
                redirect('login/index');
            }
    }
    function logout() {
            $this->session->sess_destroy();
            redirect('login/index');
    }
    
    
    

}