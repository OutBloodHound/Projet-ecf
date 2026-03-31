<?php 
require_once 'function.php';
require_once 'partials/header.php';

$id = $_GET['id'];
$categorie = getCategoriesById($id);
$articles = getArticleByCategorie($id);
?>
<div class="px-4 px-md-5 mt-0">
    <div class="d-flex justify-content-end">
        <?php if (isset($_SESSION['user'])) { ?>
            <a href="addarticle.php" class="btn buttonbBGindex mb-4 mb-lg-5">Ajouter un article</a>
        <?php } ?>
    </div>
    <div class="row justify-content-between gap-4">
    <?php foreach ($articles as $article) { ?>
        <div class="myCards text-center col-12 col-md-5 col-lg-5 col-xxl-4 mb-5 cardBackgroundColor px-0">
        <!-- <div class="myCards text-center m-5 col-3"> -->
            <div class="card h-100 indexCards" >
                <img src="img/<?= $article['image'] ?>" class="card-img-top ratio object-fit-cover" alt="..." >
                <div class="card-body indexCards d-flex flex-column align-items-center">
                    <h1 class="card-text fs-5 text-start mt-auto"><?= $article['titre'] ?></h1>
                    <p class="card-text fs-6 text-start mt-auto"><?= calcResume($article['contenu']) ?>...</p>
                    <a href="article.php?id=<?= htmlspecialchars($article['id_article']) ?>" class="btn buttonbBGindex mt-auto w-75">Lire la suite</a>
                </div>
            </div>
        </div>
    <?php } ?>
    </div>
</div>

<?php
require_once 'partials/footer.php';
?>

