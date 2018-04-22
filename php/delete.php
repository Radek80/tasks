<?php
$id = $_POST['Del'];
$delete_task = $connect->prepare("DELETE FROM tasks 
								  WHERE ID = :id");
$delete_task->bindValue(':id', $id, PDO::PARAM_INT);
$delete_task->execute();