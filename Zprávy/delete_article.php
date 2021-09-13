<?php
$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

$dotaz = "DELETE FROM article WHERE ID = :id;";
$stmt = $conn->prepare($dotaz);
$result = $stmt->execute([':id' => $_GET['id']]);

header('location: Administrace.php');
?>