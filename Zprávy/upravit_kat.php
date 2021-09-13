<?php


$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

$dotaz1 = 'SELECT * FROM kategorie WHERE ID = :id';
$stmt1 = $conn->prepare($dotaz1);
$stmt1->execute([':id' => $_GET['id_kategorie']]);

$kategorie = $stmt1->fetch();

if(isset($_POST['Kategorie'])){
    $dotaz = 'UPDATE kategorie SET Kategorie = :kategorie WHERE ID = :id;';
    $stmt = $conn->prepare($dotaz);
    $result = $stmt->execute([
        ':id' => $_GET['id_kategorie'],
        ':kategorie' => $_POST['Kategorie']]);
    header('location: Kategorie.php');
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
<h1>Upravit Kategorii</h1>

<form method="post">
    <input type="text" name="Kategorie" value="<?= $kategorie['Kategorie'] ?>">
    <button type="submit">Potvrdit</button>
</form>

</body>
</html>