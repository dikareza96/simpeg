<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->model('Resource');
	}


	public function index()
	{
			
		$data['education'] = $this->Resource->show('education')->result();
		$data['experience'] = $this->Resource->show('experience')->result();
		$data['skill'] = $this->Resource->show('skill')->result();
		$data['profile'] = $this->Resource->show('profile')->result();
		$data['berkas'] = $this->Resource->show('berkas')->result();
		$this->load->view('f_sidebar', $data);
		$this->load->view('content/index', $data);
		$this->load->view('f_footer');


	}

	public function portfolio()
	{
		$data['profile'] = $this->Resource->show('profile')->result();
		$data['portfolio'] = $this->Resource->show('project')->result();
		$this->load->view('f_sidebar', $data);
		$this->load->view('content/portfolio', $data);
		$this->load->view('f_footer');

	}

	public function project_single($id)
	{
		$where = array('id' => $id);
		$data['profile'] = $this->Resource->show('profile')->result();
		$data['project'] = $this->Resource->edit($where,'project')->result();
		$this->load->view('f_sidebar', $data);
		$this->load->view('content/projects_single', $data);
		$this->load->view('f_footer');

	}

	public function projects_single()
	
	{
		$data['project_single'] = $this->Resource->show('project')->result();
		$this->load->view('f_sidebar');
		$this->load->view('content/projects_single', $data);
		$this->load->view('f_footer');

	}
}
