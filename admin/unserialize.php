<?php

class w44m{

    private $admin = 'aaa';
    protected $passwd = '123456';
    public $lalala = 'whoami';


    public function nana(){
        if($this->admin === 'w44m' && $this->passwd ==='08067'){
            system($this->lalala);
        }else{
            echo $this->admin;
            echo $this->passwd;
            echo 'nono';
        }
    }
}

class w22m{
    public $w00m;
    public $w22m;

    public function __destruct(){
        $this->w00m -> {$this->w22m}();
    }
}

$w00m = $_GET['w00m'];
unserialize($w00m);

?>
