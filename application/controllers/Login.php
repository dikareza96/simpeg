<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('Resource');
        

    }

    protected $table = 'user'; 

    function index()
    {
        $this->load->view('backend/modules/login/index');
    }
    function proses() {
            $usr = $this->input->get('username');
            $psw = $this->input->get('password');
            $cek = $this->Resource->cek($usr, $psw);
            if ($cek->num_rows() == 1) {
                //login berhasil, buat session
                foreach ($cek->result() as $qad) {
                    $sess_data['id']            = $qad->id;
                    $sess_data['username']      = $qad->username;
                    $sess_data['password']      = $qad->password;
                    $sess_data['name']          = $qad->name;
                    $sess_data['level']         = $qad->level;
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