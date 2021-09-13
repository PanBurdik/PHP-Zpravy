<?php


$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

$dotazc = 'SELECT * FROM kategorie';
$stmtc = $conn->prepare($dotazc);
$result = $stmtc->execute();

$kategorie = $stmtc->fetchAll();

$dotazu = 'SELECT * FROM autor';
$stmtu = $conn->prepare($dotazu);
$result = $stmtu->execute();

$autor = $stmtu->fetchAll();

$dotaza = 'SELECT * FROM article WHERE id=:id';
$stmta = $conn->prepare($dotaza);
$result = $stmta->execute([':id' => $_GET["id"]]);

$article = $stmta->fetch();

if(isset($_POST['title'], $_POST['perex'], $_POST['article'], $_POST['id_kategorie'], $_POST['id_autor'])){
    $sql = "UPDATE article SET title = :title, perex = :perex, article = :text, id_kategorie = :id_cat, id_autor = :id_use WHERE id = :id;";
    $stmt = $conn->prepare($sql);
    $result = $stmt->execute([
        ':title' => $_POST["title"],
        ':perex' => $_POST["perex"],
        ':text' => $_POST["article"],
        ':id_cat' => $_POST["id_kategorie"],
        ':id_use' => $_POST["id_autor"],
        ':id' => $_GET["id"]
    ]);

    header('location: Administrace.php');
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
    <input type="text" placeholder="Název článku" name="title" value="<?= $article['title'] ?>">
    <input type="text" placeholder="Perex" name="perex" value="<?= $article['perex'] ?>">
    <textarea id="mytextarea" name="article">
        <?= $article['article'] ?>
    </textarea>
    <select name="id_kategorie">
        <?php foreach ($kategorie as $cat):
            if($cat['ID'] == $article['id_kategorie']):?>
                <option value="<?= $cat['ID'] ?>" selected>
                    <?= $cat['Kategorie'] ?>
                </option>
            <?php else: ?>
                <option value="<?= $cat['ID'] ?>">
                    <?= $cat['Kategorie'] ?>
                </option>
            <?php
            endif;
        endforeach; ?>
    </select>
    <select name="id_autor">
        <?php foreach ($autor as $aut):
            if($aut['ID'] == $article['id_autor']):?>
                <option value="<?= $aut['ID'] ?>" selected>
                    <?= $aut['name'] ?>
                </option>
            <?php else: ?>
                <option value="<?= $aut['ID'] ?>">
                    <?= $aut['name'] ?>
                </option>
            <?php
            endif;
        endforeach; ?>
    </select>
    <button>Uložit</button>
</form>
</body>
</html>