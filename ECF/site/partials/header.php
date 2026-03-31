<?php 
session_start();

$categories = getAllCategories();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link href="style/style.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous" defer></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100..700;1,100..700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap" rel="stylesheet">
    <title>Document</title>

</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg mb-5 ps-md-5 custom-nav py-lg-4">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="img/Warhammer40.png" alt="Accueil Blog" height="30" class="d-inline-block align-text-top"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarNavDropdown">
                    <ul class="navbar-nav gap-3 ">
                        <li class="nav-item ">
                            <a class="nav-link buttonbBG " aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item dropdown mb-4 mb-lg-0">
                            <a class="nav-link dropdown-toggle buttonbBG " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                catégories
                            </a>
                            <ul class="dropdown-menu buttonbBGnav">
                                <?php foreach($categories as $cat){ ?>
                                    <li>
                                        <a class="dropdown-item text-light hoverLink" href="categories.php?id=<?= htmlspecialchars($cat['id_categorie']) ?>"><?= htmlspecialchars($cat['label']); ?></a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                    </ul>
                    <div class="ms-auto me-md-5 d-flex flew-row gap-4">
                        <?php if(isset($_SESSION['user'])){?>
                            <a class="nav-link buttonbBG p-lg-2" href="logout.php">Deconnexion</a>
                            <a class="nav-link buttonbBG p-lg-2" href="profile.php?id=<?=$_SESSION['user']['id']?>">Profile</a>
                        <?php } else {?>
                            <a class="nav-link buttonbBG p-lg-2" href="login.php">Connexion</a>
                            <a class="nav-link buttonbBG p-lg-2" href="register.php">S'inscrire</a>
                        <?php } ?>
                    </div>
                </div>
        </nav>
    </header>
    <main class="container m-auto mt-1">