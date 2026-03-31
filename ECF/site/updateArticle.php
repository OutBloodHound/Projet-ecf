<?php
ob_start();
require_once 'function.php';
require_once 'partials/header.php';

$article = getAllArticles();
$categories = getAllCategories();
$id_article = $_GET['id'];
$article = getArticleById($id_article);
$categorie_article = getCategorieByArticle($id_article);
$id_categorie_article = array_column($categorie_article, 'id_categorie');


if (isset($_POST) && !empty($_POST)) {
    $date = htmlspecialchars($_POST['date']);
    $image = $article['image'];
    if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
        $ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $image = uniqid() . '.' . $ext;
        move_uploaded_file($_FILES['image']['tmp_name'], 'img/' . $image);
    }
    $titre = htmlspecialchars($_POST['titre']);
    $contenu = strip_tags($_POST['contenu']);
    $user_id = $_SESSION['user']['id'];

    updateArticle($id_article, $date, $titre, $contenu, $image);

    deleteCategoriesByArticle($id_article);

    if (isset($_POST['categories'])){
        foreach ($_POST['categories'] as $id_categorie){
            addCategorie($id_article, $id_categorie);
        }
    }
    header('location: index.php');
    exit;
}



?>

<div class="formBackground">
    <form method="post" enctype="multipart/form-data" action="updateArticle.php?id=<?= $id_article ?>">
        <h1 class="fontTitle mb-5">Modifiez votre article</h1>
        <div class="form-group">
            <input type="text" class="form-control bg-secondary mb-4 " id="titre" placeholder="Title" name="titre" value="<?php echo htmlspecialchars($article['titre']) ?>">
        </div>
        <div class="form-group">
            <input type="date" class="form-control bg-secondary mb-4 " id="date" name="date" value="<?php echo htmlspecialchars($article['date_sortie']) ?>">
        </div>
        <div class="form-group">
            <input type="file" class="form-control mb-4 bg-secondary" id="image" name="image" value="<?php echo htmlspecialchars($article['image']) ?>">
        </div>
        <div class="form-group">
            <textarea class="form-control bg-secondary mb-4" id="contenu" placeholder="Enter your content..." name="contenu" rows="5"><?php echo htmlspecialchars($article['contenu']) ?></textarea>
        </div>
        <p>Catégories :</p>
        <div class="d-flex flex-column justify-content-center">
            <?php foreach ($categories as $categorie) { ?>
                <div>
                    <input class="form-check-input mb-3" type="checkbox" name="categories[]" value="<?php echo $categorie['id_categorie'] ?>"
                    <?php if(in_array($categorie['id_categorie'], $id_categorie_article)) echo 'checked'?>>
                    <?php echo $categorie['label'] ?>
                </div>
            <?php } ?>
        </div>
        <button type="submit" class="btn buttonbBGindex mt-5">Publish</button>
    </form>
</div>


<?php
require_once 'partials/footer.php';
ob_end_flush();

?>
