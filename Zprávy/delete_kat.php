<?php
$conn = new PDO('mysql:host=localhost;dbname=zpravy', 'root', '', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$conn->query('SET NAMES utf8');

$dotaz = "DELETE FROM kategorie WHERE ID = :id;";
$stmt = $conn->prepare($dotaz);
$result = $stmt->execute([':id' => $_GET['id_kategorie']]);

header('location: Kategorie.php');
?>