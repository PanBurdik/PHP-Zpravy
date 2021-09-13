<?php


$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');


if(isset($_POST['name'])){
    $dotaz = 'INSERT INTO autor SET name = :name;';
    $stmt = $conn->prepare($dotaz);
    $result = $stmt->execute([
        ':name' => $_POST['name']
    ]);
    header('location: Autori.php');
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
<h1>Přidat Autora</h1>

<form method="post">
    <input type="text" name="name">
    <button>Potvrdit</button>
</form>

</body>
</html>
