<?php
if( empty($_POST['usuario']) || empty($_POST['password']) ) {
    header('Location: ../');
}

// region --- Conexión a la BBDD ---
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "control-ventas";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// endregion

$sql = "SELECT * FROM `usuarios` WHERE `nombre_usuario` = '".$_POST['usuario']."' AND `password` = '".$_POST['password']."'";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    header('Location: ../');
}

?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Control de Ventas</title>
    <link rel="stylesheet" href="css/estilos.css">
    <script src="js/code.js" defer></script>
</head>
<body>

<header>
    <img src="https://placehold.co/100x70" alt="Logotipo">
</header>

<h1>Bienvenido <?php echo $_POST['usuario']; ?></h1>

</body>
</html>