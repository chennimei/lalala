<?php

$db['db_host'] = "127.0.0.1";
$db['db_user'] = "root";
$db['db_pass'] = "Aa123456";
$db['db_name'] = "phpcms";

foreach($db as $key => $value){
    define(strtoupper($key),$value);
}

$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME, 3306);

?>
