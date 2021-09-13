<?php


$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

session_start();

$dotaz = 'SELECT * FROM article WHERE id_autor = :id;';
$stmt = $conn->prepare($dotaz);
$result = $stmt->execute([
    ':id' => $_SESSION['user']['ID']]);

$article = $stmt->fetchAll();

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css" >
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
            <?php if (isset($_SESSION['user'])): ?>
                <a href="Administrace.php">Administrace článků</a>
                <a href="pridat_clanek.php">Přidat článek</a>
            <?php endif; ?>
            <a href="login.php">Přihlásit se</a>
            <a href="register.php">Registrace</a>
        </div>
    </div>
</header>
<br>
<?php if (isset($_SESSION['user'])): ?>
    Uživatel
    <br>
    <?= $_SESSION['user']['name'] ?>
    <br>
    <a href="logout.php">Odhlásit</a>
<?php else: ?>
    Uživatel nepřihlášen
<?php endif; ?>
<br>
<table>
    <tr>
        <th>Název článku</th>
        <th>Upravit</th>
        <th>Odstranit</th>
    </tr>
    <?php foreach ($article as $zprava): ?>
    <?php if ($zprava['id_autor'] == $_SESSION['user']['ID']):  ?>
        <tr>
            <td>
                <a href="Article.php?id=<?= $zprava['ID']?>">
                    <?= $zprava['title']?>
                </a>
            </td>
            <td>
                <a href="upravit_article.php?id=<?= $zprava['ID']?>">
                    Upravit článek
                </a>
            </td>
            <td>
                <a href="delete_article.php?id=<?= $zprava['ID']?>">
                    Smazat článek
                </a>
            </td>
        </tr>
        <?php else: ?>
            <tr>
                <td>
                    <a href="Article.php?id=<?= $zprava['ID']?>">
                        <?= $zprava['title']?>
                    </a>
                </td>
            </tr>
        <?php endif; ?>
    <?php endforeach; ?>
</table>
</body>
</html>