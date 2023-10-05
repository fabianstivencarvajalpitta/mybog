<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<?php
include_once('../config/conexion.php');

$nombre = $_POST['Nombres'];
$apellido = $_POST['Apellidos'];
$email = $_POST['Email'];
$password = $_POST['Password'];

// Verificar si el correo electrónico ya existe en la base de datos
$sql_verificar_email = "SELECT * FROM cuentas WHERE Email = '$email'";
$resultado_verificar = mysqli_query($conexion, $sql_verificar_email);

if (mysqli_num_rows($resultado_verificar) > 0) {
    echo '<div class="alert alert-danger" role="alert">
            El correo electrónico ya está registrado. Por favor, utiliza otro correo.
          </div>';
    echo '<script>
            setTimeout(function(){
            window.location.href = "../registro.php"; 
            }, 2500);
            </script>';
} else {
    // Generar un hash seguro de la contraseña
    $hash = password_hash($password, PASSWORD_DEFAULT);

    // Insertar la nueva cuenta en la base de datos
    $sql_insertar = "INSERT INTO cuentas (Nombres, Apellidos, Email, Password, Id_servicios) VALUES ('$nombre', '$apellido', '$email', '$hash', '1')";

    if (mysqli_query($conexion, $sql_insertar)) {
        echo '<div class="alert alert-success" role="alert">
                Registro exitoso. Serás redireccionado.
              </div>';
        echo '<script>
                setTimeout(function(){
                    window.location.href = "../main.php";
                }, 2500);
              </script>';
    } else {
        echo "Error: " . $sql_insertar . "<br>" . mysqli_error($conexion);
    }
}

mysqli_close($conexion);
?>
