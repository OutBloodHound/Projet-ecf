<?php
require_once 'dbconnect.php';

function getAllArticles()
{
    $pdo = dbconnect();
    $query = "SELECT * FROM article";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $articles;
}

function getAllCategories()
{
    $pdo = dbconnect();
    $query = "SELECT * FROM categories";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $categories;
}


function calcResume($content, $length = 200)
{
    $text = strip_tags($content);
    if (strlen($text) <= $length) {
        return $text;
    }
    $preface = substr($text, 0, $length);
    $preface = substr($preface, 0, strrpos($preface, ' '));
    return $preface;
}

function getArticleById($id)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM article WHERE id_article = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $articles = $stmt->fetch(PDO::FETCH_ASSOC);
    return $articles;
}

function getCategoriesById($id)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM categories WHERE id_categorie = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $articles = $stmt->fetch(PDO::FETCH_ASSOC);
    return $articles;
}

function getUserByEmail($email)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM user WHERE email = :email";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':email', $email);
    $stmt->execute();
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    return $user;
}

function userInsert($pseudo, $email, $password)
{
    $pdo = dbconnect();
    $query = "INSERT INTO user(pseudo, email, password) VALUES (:pseudo, :email, :password)";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':pseudo', $pseudo);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $password);
    $stmt->execute();
}

function getArticleByCategorie($id_categorie)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM article
        JOIN categorie_articles ON article.id_article = categorie_articles.article_id 
        WHERE categorie_articles.categorie_id = :id_categorie";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id_categorie', $id_categorie);
    $stmt->execute();
    $articles = $stmt->fetchALL(PDO::FETCH_ASSOC);
    return $articles;
}

function getUserById($id)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM user WHERE id_user = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    return $user;
}

function userUpdate($pseudo, $email, $password, $id)
{
    $pdo = dbconnect();
    $query = "UPDATE user SET pseudo = :pseudo, email = :email, password = :password WHERE id_user = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':pseudo', $pseudo);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $password);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
}

function addArticle($date, $titre, $contenu, $image, $user_id)
{
    $pdo = dbconnect();
    $query = "INSERT INTO article (date_sortie, titre, contenu, image, user_id) 
            VALUES (:date_sortie, :titre, :contenu, :image, :user_id)";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':date_sortie', $date);
    $stmt->bindParam(':titre', $titre);
    $stmt->bindParam(':contenu', $contenu);
    $stmt->bindParam(':image', $image);
    $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    $stmt->execute();
    return $pdo->lastInsertId();
}

function articleDelete($id){
    $pdo = dbconnect();
    $query = "DELETE FROM article WHERE id_article = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
}

function addCategorie($id_articles, $id_categorie)
{
    $pdo = dbconnect();
    $query = "INSERT INTO categorie_articles (article_id, categorie_id) VALUES (:article_id, :categorie_id)";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':article_id', $id_articles);
    $stmt->bindParam(':categorie_id', $id_categorie);
    $stmt->execute();
}

function getCategorieByArticle($id_article)
{
    $pdo = dbconnect();
    $query = "SELECT * FROM categories JOIN categorie_articles ON categories.id_categorie = categorie_articles.categorie_id WHERE categorie_articles.article_id = :id_article";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id_article', $id_article);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function updateArticle($id_article, $date, $titre, $contenu, $image){
    $pdo = dbconnect();
    $query = "UPDATE article SET date_sortie = :date_sortie, titre = :titre, contenu = :contenu, image = :image WHERE id_article = :id_article";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':date_sortie', $date);
    $stmt->bindParam(':titre', $titre);
    $stmt->bindParam(':contenu', $contenu);
    $stmt->bindParam(':image', $image);
    $stmt->bindParam(':image', $image);
    $stmt->bindParam(':id_article', $id_article, PDO::PARAM_INT);
    $stmt->execute();
}

function deleteCategoriesByArticle($id_article){
    $pdo = dbconnect();
    $query = "DELETE FROM categorie_articles WHERE article_id = :id_article";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id_article', $id_article, PDO::PARAM_INT);
    $stmt->execute();
}

function getCommentaireByArticle($id_article){
    $pdo = dbconnect();
    $query = "SELECT commentaire.*, user.pseudo FROM commentaire JOIN user ON commentaire.user_id = user.id_user WHERE commentaire.article_id = :id_article";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(":id_article", $id_article);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function addCommentaire($contenu, $user_id, $article_id){
    $pdo = dbconnect();
    $query = "INSERT INTO commentaire(contenu, user_id, article_id) VALUES (:contenu, :user_id, :article_id)";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':contenu', $contenu);
    $stmt->bindParam(':user_id', $user_id);
    $stmt->bindParam(':article_id', $article_id);
    $stmt->execute();
}