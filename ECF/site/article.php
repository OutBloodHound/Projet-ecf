<?php
ob_start();
require_once 'function.php';
require_once 'partials/header.php';


$id_article = $_GET['id'];


if(isset($_POST) && !empty($_POST)){
    $contenu = htmlspecialchars($_POST['contenu']);
    $user_id = $_SESSION['user']['id'];
    addCommentaire($contenu, $user_id, $id_article);
    header("location: article.php?id=" . $id_article);
    exit;
}

$article = getArticleById($id_article);
$commentaires = getCommentaireByArticle($id_article);

?>

<div class="d-flex justify-content-end">
    <?php if (isset($_SESSION['user']) && $_SESSION['user']['id'] == $article['user_id']) { ?>
        <a href="updateArticle.php?id=<?=  $article['id_article'] ?>" class="btn buttonbBGindex mb-4 mb-lg-5">Modifier l'article</a>
    <?php } ?>
</div>
<div class="card h-100  cardBackground">
    <img src="img/<?= $article['image'] ?>" class="card-img-top img-perso " alt="...">
    <div class="card-body m-5 fs-3 lh-lg">
        <h1 class="card-text mb-5 fontTitle text-center"><?= $article['titre'] ?></h1>
        <div class="card-text fs-5 fontStyle">
            <?php
            $paragraphes = explode("\n", $article['contenu']);
            foreach ($paragraphes as $p) {
                if (trim($p) !== "") {
                    echo "<p>" . $p . "</p>";
                }
            }
            ?>
        </div>
    </div>
</div>
<div class="text-white">
    <?php if(isset($_SESSION['user'])) { ?>
    <div class="mt-4 text-light">
        <h3>Ajouter un commentaire:</h3>
        <form method="post" action="article.php?id=<?= $id_article ?>" class="commentForm">
            <textarea class="form-control mb-3 text-white commentBackgroundColor bg-dark" name="contenu" rows="1" placeholder="Votre commentaire..."></textarea>
            <button type="submit" class="btn buttonbBGindex">Publier</button>
        </form>
    </div>
    <?php } else { ?>
        <p class="mt-4 text-ligth">Connectez-vous pour commenter</p>
    <?php } ?>
    <div class="mt-4">
        <h3>Commentaires</h3>
        <?php foreach($commentaires as $commentaire) { ?>
            <div class="card mb-3">
                <div class="card-body bg-dark text-white postedComment">
                    <h6><?= $commentaire['pseudo'] ?></h6>
                    <p><?= $commentaire['contenu'] ?></p>
                </div>
            </div>
        <?php } ?>
    </div>
</div>


<?php
require_once 'partials/footer.php';
ob_end_flush();
?>