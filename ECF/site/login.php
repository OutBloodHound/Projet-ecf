<?php 
ob_start();
require_once 'function.php';
require_once 'partials/header.php';


if (isset($_POST)&& !empty($_POST)){
    $email = htmlspecialchars(trim($_POST['email']));
    $password = $_POST['password'];
    $user =  getUserByEmail($email);
    if(!$user){
        exit;
    }
    $hashedpassword = $user['password'];
    $isAuth = password_verify($password, $hashedpassword);
    if($isAuth){
        $_SESSION['user'] = [
            'id' => $user['id_user'],
            'pseudo' => $user['pseudo']
        ];
    }

    header('Location: index.php');
    exit;
}

?>

<div class="formBackground">
    <form method="post">
        <h1 class="fontTitle mb-5">Welcome back!</h1>
        <div class="form-group">
            <label for="email" class="mb-3">Email address</label>
            <input type="email" class="form-control bg-secondary mb-4 " id="email" aria-describedby="emailHelp" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
            <label for="password" class="mb-3">Password</label>
            <input type="password" class="form-control mb-4 bg-secondary" id="password" placeholder="Password" name="password">
        </div>
        <button type="submit" class="btn buttonbBGindex ">Sign in</button>
        <hr>
        <a href="register.php" class="btn buttonbBGindex">Don't have an account? Register now !</a>
    </form>
</div>
<?php
require_once 'partials/footer.php';
ob_end_flush();
?>
