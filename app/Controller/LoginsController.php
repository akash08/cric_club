<?php
class LoginsController extends AppController {
	public $uses = array('Login');
        public function verify(){
		if(!empty($this->data)){
			$enc_pass = md5($this->data['Login']['password']);
			$member_detail = $this->Login->find('first',array('conditions'=>array(
											'Login.member_login'=>$this->data['Login']['username'],
											'Login.member_pass'=>$enc_pass
									)));
			if(!empty($member_detail)){
                            CakeSession::write('admin',true);
                            CakeSession::write('member',$member_detail['Login']['member_id']);
                            CakeSession::write('team_id',$member_detail['Login']['team_id']);
                                $this->Session->setFlash('Login Successful', 'default', array('class' => 'success'));
				$this->redirect(array('controller'=>'Home','action'=>'index','admin'=>true));
			} else {
				$this->Session->setFlash('User dose not exsists', 'default', array('class' => 'error'));
				$this->redirect(array('controller'=>'Home','action'=>'index','admin'=>false));
			}						
		} else {
                    $this->redirect(array('controller'=>'Home','action'=>'index','admin'=>false));
                }
	}
        public function admin_logout(){
            CakeSession::delete('admin');
            CakeSession::delete('member');
            CakeSession::delete('team_id');
            $this->redirect(array('controller'=>'Home','action'=>'index','admin'=>false));
        }
}
?>