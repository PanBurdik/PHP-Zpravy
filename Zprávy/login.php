<?php
$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');


session_start();

$error = false;

if (isset($_POST['email'], $_POST['password'])) {
    $sql = 'SELECT * FROM autor WHERE email = :email';
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':email' => $_POST['email']
    ]);
    $user = $stmt->fetch();


    if($user === false) {
        $error = true;
    }

    if (password_verify($_POST['password'], $user['password'])) {
        unset($user['password']);
        unset($user['2']);
        $_SESSION['user'] = $user;



        header('location: index.php');
    } else  {
        $error = true;
    }
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
<h1>Přihlášení</h1>
<?php if ($error): ?>
<p>
    <strong>
        Chybně zadané přihlašovací údaje
    </strong>
</p>
<?php endif; ?>
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
    <button>Přihlásit se</button>
    <br>
    <a href="register.php">nemám účet</a>
</form>
</body>
</html>