<?php

class LoginModel extends BaseModel
{
    const TABLE ='users';

    public function upAccount($data)
    {
        $id=$data['LastName'];
        $AccountName=$data['Email'];
        $Password=$data['Password'];
        $FirstName=$data['FirstName'];
        $LastName=$data['LastName'];
        $LoginTime=date("Y/m/d");
        
       // $sql1="INSERT INTO users VALUES('$id','M','2002/09/06','$FirstName','$LastName','$AccountName','$AccountName','$Password','0123456789','Quảng Ngãi')";
       // $sql2="INSERT INTO customer VALUES('$id','$LoginTime')";
    
        $values1=['ID'=>$id,'Gender'=>'M','DoB'=>'2002/09/06','FirstName'=>$FirstName,'LastName'=>$LastName,'Email'=>$AccountName,'AccountName'=>$AccountName,'Password'=>$Password,'PhoneNumber'=>'0123456789','Address'=>'Quảng Ngãi'];
        $values2=['ID'=>$id,'LoginTime'=>$LoginTime];
        $this->INSERT('users',$values1);
        $this->INSERT('customer',$values2);

    }

    public function getCustomer()
    {
        $sql="SELECT * FROM users,customer WHERE users.ID=customer.ID";
        return $this->QUERYOTHER($sql);
    }
}

?>