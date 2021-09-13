<?php


$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

session_start();

$dotaz = 'SELECT * FROM autor';
$stmt = $conn->prepare($dotaz);
$stmt->execute();

$article = $stmt->fetchAll();

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
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
        <th>Autoři</th>
        <?php if (isset($_SESSION['user'])): ?>
        <th>Upravit</th>
        <th>Odstranit</th>
        <?php endif; ?>
    </tr>
    <?php foreach ($article as $zprava): ?>
        <tr>
            <td>
                <a href="vypis.php?id_autor=<?= $zprava['ID']?>">
                    <?= $zprava['name']?>
                </a>
            </td>
            <?php if (isset($_SESSION['user'])): ?>
            <td>
                <a href="upravit_aut.php?id_autor=<?= $zprava['ID']?>">
                    Upravit Autora
                </a>
            </td>
            <td>
                <a href="delete_aut.php?id_autor=<?= $zprava['ID']?>">
                    Smazat Autora
                </a>
            </td>
            <?php endif; ?>
        </tr>
    <?php endforeach; ?>
</table>
</body>
</html>
