<?php 
class csrf{     

public function get_token() {         //create a token        
    $data=mt_rand(0,  mt_getrandmax()).microtime(true);         
	$token=hash('sha512',$data);         
	$_SESSION['token']=$token;         
	return $token;     
}      
public function check_token($token) {         //check token        
	$sessiontoken=$this->get_token_from_session();         
	if(strlen($sessiontoken)==128&&strlen($token)==128&&$sessiontoken==$token) {         
		$this->get_token();         
		return true;         
	}
	else {             
		return false;         
	}     
}      
public function get_token_from_post() {      
	return isset($_POST['token'])?$_POST['token']:'';     
}      
public function get_token_from_session() {         
	return isset($_SESSION['token'])?$_SESSION['token']:'';     
} 

} 
?>