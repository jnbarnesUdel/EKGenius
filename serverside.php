<?php
//Access-Control_Allow_Oregin;
$str_json = file_get_contents('php://input');
$str_json = json_decode($str_json);
$fullStr = "";
$count = sizeof($str_json);
echo $count;
print("/n");
echo $str_json;
for ($i = 0; $i < $count; $i++){
    $str = $str_json[$i];
    $fullStr = $fullStr.$str;
}
$fullStr = str_replace('"', "", $fullStr);
$fullStr= str_replace('[', "", $fullStr);
$fullStr = str_replace(']', "", $fullStr);
$fullStr = str_replace(' ', "", $fullStr);
$fullStr = str_replace(',', "", $fullStr);

$fullStr = '"'.$fullstr.'"';

$star = "*";
$dbhandle = new PDO("sqlite:test2.sql") or die("Failed to open DB");
if (!$dbhandle) die ($error);


$query = "SELECT $star FROM patientData WHERE id = $fullStr ";


$statement = $dbhandle->prepare($query);
$statement->execute();
echo 3;

//The results of the query are typically many rows of data
//there are several ways of getting the data out, iterating row by row,
//I chose to get associative arrays inside of a big array
//this will naturally create a pleasant array of JSON data when I echo in a couple lines
$results = $statement->fetchAll(PDO::FETCH_ASSOC);
print_r($results);



//this part is perhaps overkill but I wanted to set the HTTP headers and status code
//making to this line means everything was great with this request
header('HTTP/1.1 200 OK');
//this lets the browser know to expect json
header('Content-Type: application/json');
//this creates json and gives it back to the browser
echo json_encode($results);
