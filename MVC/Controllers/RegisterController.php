<?php

class RegisterController extends BaseController
{
    private $register;
    public function __construct()
    {
        $this->loadModel('RegisterModel.php');
        $this->register= new RegisterModel();
      
    }
    public function show()
    {
        $data=['page'=>'Register'];
        $this->view($data);
    }

}


?>