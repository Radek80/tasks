<?php
$tasks = $connect->prepare("SELECT * 
							FROM tasks");
$tasks->execute();

$tasks = $tasks->FetchAll(PDO::FETCH_ASSOC);

$rows = array();
foreach ($tasks as $task)
{
    $rows[] = $task;        
} 