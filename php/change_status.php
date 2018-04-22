<?php
if (isset($_POST['Undone']))
{
	$id = $_POST['Undone'];
	$status = "undone";
	$date = date("Y-m-d H:i:s");
	$update_status = $connect->prepare("UPDATE tasks 
										SET LastUpdate=:update_date, Status=:status 
										WHERE ID = :id");
	$update_status->bindValue(':update_date', $date, PDO::PARAM_STR);
	$update_status->bindValue(':status', $status, PDO::PARAM_STR);
	$update_status->bindValue(':id', $id, PDO::PARAM_INT);

	$update_status->execute();
}else if (isset($_POST['Done']))
{
	$id = $_POST['Done'];
	$status = "done";
	$date = date("Y-m-d H:i:s");
	$update_status = $connect->prepare("UPDATE tasks 
										SET LastUpdate=:update_date, Status=:status  
										WHERE ID = :id");
	$update_status->bindValue(':update_date', $date, PDO::PARAM_STR);
	$update_status->bindValue(':status', $status, PDO::PARAM_STR);
	$update_status->bindValue(':id', $id, PDO::PARAM_INT);

	$update_status->execute();
}