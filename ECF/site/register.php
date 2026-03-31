<?php 
ob_start();
require_once 'function.php';
require_once 'partials/header.php';



if(isset($_POST) && !empty($_POST)){
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $email = htmlspecialchars($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    userInsert($pseudo, $email, $password);
    header('location: index.php');
}



?>

<div class="formBackground">
    <form method="post">
        <h1 class="fontTitle mb-5">Welcome!</h1>
        <div class="form-group">
            <label for="pseudo" class="mb-3">Username</label>
            <input type="text" class="form-control bg-secondary mb-4 " id="pseudo" placeholder="Enter Username" name="pseudo">
        </div>
        <div class="form-group">
            <label for="email" class="mb-3">Email address</label>
            <input type="email" class="form-control bg-secondary mb-4 " id="email" aria-describedby="emailHelp" placeholder="Enter mail" name="email">
        </div>
        
        <div class="form-group">
            <label for="password" class="mb-3">Password</label>
            <input type="password" class="form-control mb-4 bg-secondary" id="password" placeholder="Password" name="password">
        </div>
        <button type="submit" class="btn buttonbBGindex">Sign up</button>
    </form>
</div>


<?php
require_once 'partials/footer.php';
ob_end_flush();
?>
