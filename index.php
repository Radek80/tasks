<?php
require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('templates');
$twig = new Twig_Environment($loader);
$info = "";
$info2 = "";
require_once "php/dbconnect.php";

if ((isset($_POST['Undone'])) || (isset($_POST['Done'])))
{
	require_once "php/change_status.php";
}

if (isset($_POST['Add']))
{
	require_once "php/add.php";
}

/*if (isset($_POST['Del']))
{			
	require_once "php/delete.php";
}*/


require_once "php/pull_db.php";

$number = count($rows);
if ($number < 1)
	$info2 = "Brak danych w bazie, dodaj nowe zadanie";
$template = $twig->load('index.html');
echo $template->render(array('rows' => $rows, 'info' => $info, 'info2' => $info2));
