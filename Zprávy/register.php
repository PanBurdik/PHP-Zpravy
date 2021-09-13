<?php
$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');


if (isset($_POST['email'], $_POST['password'], $_POST['name'])) {

    $sql = 'INSERT INTO autor SET email= :email, password = :password, name = :name';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':email' => $_POST['email'],
        ':password' => password_hash($_POST['password'], PASSWORD_DEFAULT),
        ':name' => $_POST['name']
    ]);

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
    <title>Zpravy</title>
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
<h1>Registrace</h1>
<form method="post">
    <label>
        Přihlašovací email
        <input type="email" name="email" placeholder="Zadejte email">
    </label>
    <br>
    <label>
        Heslo
        <input type="password" name="password" placeholder="Zadejte heslo">
    </label>
    <br>
    <label>
        Jmeno
        <input type="text" name="name" placeholder="Zadejte jmeno">
    </label>
    <br>
    <button>Registrovat se</button>
    <br>
    <a href="login.php">Už mám účet</a>
</form>
</body>
</html>