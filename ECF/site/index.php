<?php 
session_start();
require_once 'function.php';
require_once 'partials/header.php';

$articles = getAllArticles();

?>
<div class="px-4 px-md-5">
    <div class="row justify-content-between gap-4">
    <?php foreach ($articles as $article) { ?>
        <div class="myCards text-center col-12 col-md-5 col-lg-5 col-xxl-3 mb-4">
        <!-- <div class="myCards text-center m-5 col-3"> -->
            <div class="card h-100" >
                <img src="img/<?= $article['image'] ?>" class="card-img-top img-perso ratio" alt="..." >
                <div class="card-body">
                    <p class="card-text"><?= $article['titre'] ?></p>
                    <p class="card-text"><?= calcResume($article['contenu']) ?>...</p>
                    <a href="article.php?id=<?= htmlspecialchars($article['id_article']) ?>" class="btn btn-primary">Lire la suite</a>
                </div>
            </div>
        </div>
    <?php } ?>
    </div>
</div>

<?php
require_once 'partials/footer.php';
?>

