<?php
App::uses('AppController', 'Controller');
class AboutUsController extends AppController {
    public $name = 'AboutUs';
    public $uses = array('Team');
    public $helpers = array('Form','Html');
    function index(){
        $abt_info = $this->Team->find('first',array('conditions'=>array(
                                    'team_id' =>CakeSession::read('team_id')
                                )));
        $this->set('abt_info',$abt_info);
   }
    function admin_index(){
        $this->id = CakeSession::read('team_id');
        if(!empty($this->data)){
            $title = $this->data['Team']['about_us_title'];
            $desc = $this->data['Team']['Description'];
            if($this->Team->updateAll(array('title'=>"'".addslashes($title)."'",
                                            'description'=>"'".addslashes($desc)."'"),
                                      array('team_id'=>  $this->id))){
                $this->Session->setFlash("Database updated.",'default',array('class' => 'success'));
                $this->redirect(array('action'=>'index','admin'=>false));
            }
        }
    }
}
?>
