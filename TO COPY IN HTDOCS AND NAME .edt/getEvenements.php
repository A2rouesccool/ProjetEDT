<?php

include('./connect.php');

$out = array('error' => false);
 
$crud = 'read';
 
if(isset($_GET['crud'])){
	$crud = $_GET['crud'];
}
 
 
if($crud = 'read'){
	$sql = "SELECT id FROM evenement WHERE jour = ".$_REQUEST['numJour'].";";
	$query = $conn->query($sql);  
  
	$eventID = array();
 
	while($row = $query->fetch_array()){
		array_push($eventID, $row);
	}

	$out['eventID'] = $eventID;	
}
 
 
$conn->close();
header("Content-type: application/json");
header("Accept: application/json");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Allow-Origin: http://localhost:8080");
echo json_encode($out);
die();
 
 
?>