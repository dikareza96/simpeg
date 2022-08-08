<?php 

class Resource extends CI_Model{

	function show($table){
		$this->load->database(); 
		return $this->db->get($table);
	}
	function store($data,$table){  
		$this->load->database();
		$this->db->insert($table,$data);
	}
	function komite($data){  
		$this->load->database();
		$this->db->insert('transaksi',$data);
	}
	
	function edit($where,$table){	
		$this->load->database();	
		return $this->db->get_where($table,$where);
	}	
	function update($where,$data,$table){
		$this->load->database();	
		$this->db->where($where); 
		$this->db->update($table,$data);
	}
	function destroy($where,$table){
		$this->load->database(); 
		$this->db->where($where);
		$this->db->delete($table);
	}
	function cek($username, $password) {
    $this->db->where("nip", $username);
    $this->db->where("pass_login", $password);
    return $this->db->get("tb_users");
    }
	

}


