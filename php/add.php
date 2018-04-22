<?php
$description = $_POST['Description'];
if (strlen($description)>0)
{
	$status = "undone";
	$date = date("Y-m-d H:i:s");
	$insert_task = $connect->prepare("INSERT INTO tasks 
									  VALUES (NULL, :description, :input_date, :update_date, :status)");
	$insert_task->bindValue(':description', $description, PDO::PARAM_STR);
	$insert_task->bindValue(':input_date', $date, PDO::PARAM_STR);
	$insert_task->bindValue(':update_date', $date, PDO::PARAM_STR);
	$insert_task->bindValue(':status', $status, PDO::PARAM_STR);	

	$exec = $insert_task->execute();
}else
{
	$info = "Wprowadź opis!";
}