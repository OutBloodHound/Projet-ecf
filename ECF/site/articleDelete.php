<?php 
ob_start();
require_once 'function.php';

require_once 'partials/header.php';

$id = $_GET['id'];
$article = getArticleById($id);

articleDelete($id);

header('Location: index.php');
exit;
?>

<?php
require_once 'partials/footer.php';
ob_end_flush();

?>