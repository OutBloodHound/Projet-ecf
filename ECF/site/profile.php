<?php 
ob_start();
require_once 'function.php';
require_once 'partials/header.php';

$id = $_SESSION['user']['id'];
$user = getUserById($id);

if(isset($_POST) && !empty($_POST)){
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $email = htmlspecialchars($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $id_user = htmlspecialchars($_SESSION['user']['id']);
    $userUpdate = userUpdate($pseudo, $email, $password, $id_user);

    header('location: index.php');
    exit;
}

?>

<div class="formBackground">
    <form method="post">
        <h1 class="fontTitle mb-5">Hello <?= $user['pseudo']?></h1>
        <div class="form-group">
            <input type="text" class="form-control bg-secondary mb-4 " id="pseudo" placeholder="Enter Username" name="pseudo" value="<?= $user['pseudo'] ?>">
        </div>
        <div class="form-group">
            <input type="email" class="form-control bg-secondary mb-4 " id="email" aria-describedby="emailHelp" placeholder="Enter mail" name="email" value="<?= $user['email'] ?>">
        </div>
        
        <div class="form-group">
            <input type="password" class="form-control mb-4 bg-secondary" id="password" placeholder="Change password" name="password">
        </div>
        <button type="submit" class="btn buttonbBGindex">Confirm</button>
    </form>
</div>


<?php
require_once 'partials/footer.php';
ob_end_flush();
?>
