<?php 

function dbconnect(){
    try{
        $dbh = new PDO('mysql:host=localhost;dbname=blog', 'hugo', 'hugo123');
        return $dbh;
    }catch(PDOException $e){
        echo $e->getMessage();
    }
}

