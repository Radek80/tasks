<?php
require_once '../vendor/autoload.php';
use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\DriverManager;

	$user = "root";
    $pass = "";  
    $dsn = 'mysql:host=localhost;dbname=wizjo';
    $pdo = new PDO($dsn, $user, $pass);    
    $connect = DriverManager::getConnection(array('pdo' => $pdo), new Configuration());

$id = $_POST['id'];
$delete_task = $connect->prepare("DELETE FROM tasks 
								  WHERE ID = :id");
$delete_task->bindValue(':id', $id, PDO::PARAM_INT);
$delete_task->execute();
