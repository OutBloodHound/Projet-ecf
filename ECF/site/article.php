<?php
session_start();

require_once 'function.php';
require_once 'partials/header.php';


$id = $_GET['id'];
$article = getArticleById($id);


?>



<!-- <div class="imgBackground" style="background-image: url('img/<?php echo $article['image']; ?>')">
    <h1><php echo htmlspecialchars($article['titre']) ?></h1>
</div>
<p><php echo htmlspecialchars($article['contenu']) ?></p> -->

<div class="card h-100  cardBackground">
    <img src="img/<?= $article['image'] ?>" class="card-img-top img-perso ratio" alt="...">
    <div class="card-body m-5 fs-3">
        <p class="card-text mb-5 .fontTitle"><?= $article['titre'] ?></p>
        <div class="card-text fs-5 fontStyle">
            <?php
            // 1. On sépare le texte brut par les retours à la ligne
            $paragraphes = explode("\n", $article['contenu']);

            // 2. On boucle sur chaque morceau pour créer un vrai <p>
            foreach ($paragraphes as $p) {
                // On affiche le paragraphe seulement s'il n'est pas vide
                if (trim($p) !== "") {
                    echo "<p>" . htmlspecialchars($p) . "</p>";
                }
            }
            ?>
        </div>
    </div>
</div>

<?php
require_once 'partials/footer.php';
?>