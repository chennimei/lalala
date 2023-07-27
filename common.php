<?php
$email = 'a';
try {
    $dbhost = 'localhost';
    $dbname = 'ajie';
    $dbuser = 'root';
    $dbpass = 'root';
    $option = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ];
    $conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbname, $dbpass, $option);
} catch (PDOException $e) {
    echo "Error : " . $e->getMessage() . "<br/>";
    die();
}