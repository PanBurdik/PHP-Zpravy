<?php

$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

session_start();

$sql_c = 'SELECT * FROM kategorie;';
$stmtc = $conn->prepare($sql_c);
$result = $stmtc->execute();

$categories = $stmtc->fetchAll();


if(isset($_POST['title'], $_POST['perex'], $_POST['article'], $_POST['id_kategorie'])){
    $sql = "INSERT INTO article SET title = :title, perex = :perex, article = :text, id_kategorie = :id_cat, id_autor = :id_use;";
    $stmt = $conn->prepare($sql);
    $result = $stmt->execute([
        ':title' => $_POST["title"],
        ':perex' => $_POST["perex"],
        ':text' => $_POST["article"],
        ':id_cat' => $_POST["id_kategorie"],
        ':id_use' => $_SESSION["user"]['ID']
    ]);

    header('location: index.php');
}


?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css" >
    <script src="https://cdn.tiny.cloud/1/eeny7u8832iksg5qeqc3oeep5zbjw5dzu8t7i53aq7n6zqni/tinymce/5/tinymce.min.js"
            referrerpolicy="origin"></script>
    <script>
        tinymce.init({
           selector: '#mytextarea'
        });
    </script>
    <title>Zprávy</title>
</head>
<body>
<header>
    <div>
        <h1>Zprávy pro všechny gurmány</h1>
        <div>
            <a href="index.php">Zprávy</a>
            <a href="Kategorie.php">Kategorie</a>
            <a href="Autori.php">Autoři</a>
            <a href="Administrace.php">Administrace článků</a>
            <a href="pridat_clanek.php">Přidat článek</a>
        </div>
    </div>
</header>
<br>
<form method="post">
    <input type="text" placeholder="Název článku" name="title">
    <input type="text" placeholder="Perex" name="perex">
    <textarea id="mytextarea" name="article">
        Hello, World!
    </textarea>
    <select name="id_kategorie">
        <?php foreach ($categories as $Katarina): ?>
            <option value="<?= $Katarina['ID'] ?>">
                <?= $Katarina['Kategorie'] ?>
            </option>
        <?php endforeach; ?>
    </select>
    <button>Uložit</button>
</form>
</body>
</html>