<?php 
require_once 'dbconnect.php';

function getAllArticles() {
    $pdo = dbconnect();
    $query = "SELECT * FROM article";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articles;
}

function calcResume($content, $length = 200){
    $text = strip_tags($content);

    if (strlen($text) <= $length ){
        return $text;
    }
    $preface = substr($text, 0, $length);

    $preface = substr($preface, 0, strrpos($preface,' '));

    return $preface;
}

function getArticleById($id){
    $pdo = dbconnect();
    $query = "SELECT * FROM article WHERE id_article = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $articles = $stmt->fetch(PDO::FETCH_ASSOC);
    return $articles;
}



?>