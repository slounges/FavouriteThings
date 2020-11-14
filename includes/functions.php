<?php
//$result will store in the database request results so that we can encode and return them to the index.php

$result = array();

function getAllUsers($conn){
    $query = "SELECT * FROM tbl_favourite_things";
    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }
    //return $result;
    echo(json_encode($result[0]));
}