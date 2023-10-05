<?php
session_start();



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Olvido su contraseña</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./estilos/Diseño.css">
    <link rel="stylesheet" href="./estilos/HeaderFooter.css">
</head>

<body>
<div class="wrapper">
        <div class="content">
        <nav id="custom-navbar" class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid" id="header">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <a class="navbar-brand" href="./index.php"><img src="./Imagenes/Logo.png" alt="Logo"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                        <ul class="navbar-nav justify-content-end">
                            <li class="nav-item">
                                <a class="nav-link rojo" id="mapa" href="./mapa.php">Mapa</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link amarillo" id="calendario" href="./calendario.php">Calendario</a>
                            </li>
                            <?php

                            if (isset($_SESSION['user_id'])) {
                                echo '<li class="nav-item">
                                    <form action="./php/logout.php" method="post">
                                        <button type="submit" class="nav-link">Cerrar sesión</button>
                                    </form>
                                        </li>';
                            } else {
                                echo '<li class="nav-item">
                                    <a class="nav-link rojo" id="main" href="./main.php">Ingresar</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link amarillo" id="registro" href="./registro.php">Registro</a>
                                </li>';
                            }
                            ?>
                        </ul>




                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 order-md-1">
                        <div class="login-box">
                            <h2>Iniciar Sesión</h2>
                            <form action="php/login.php" method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="Email" required
                                        pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                                    <label for="email">Correo</label>
                                </div>
                                <br>
                                <div class="form-group">
                                    <input type="password" class="form-control" name="Password" required minlength="8"
                                        maxlength="12" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}">
                                    <label for="password">Contraseña</label>
                                    <a href="./contraseñaf.php">¿Olvidaste tu Contraseña?</a>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Iniciar</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 order-md-2">
                        <img class="ciudad" src="./Imagenes/ciudad.png" alt="ciudad">
                    </div>
                </div>
            </div>
            <footer class="footer">
            <nav>
                    <ul>
                        <li><a href="#">Política de privacidad</a></li>
                        <li><a href="#">Términos y condiciones</a></li>
                        <li><a href="#">Contacto</a></li>

                        <?php
                        if (isset($_SESSION['user_id'])) {
                            echo '<li><a href="./reg_establecimiento.php">deseas registrar tu establecimiento</a></li>';
                        } else {
                            echo '<li><a data-toggle="modal" data-target="#myModal" href="#">deseas registrar tu establecimiento</a></li>';
                        }
                        ?>

                    </ul>

                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">Mensaje</h4>
                                    <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    Debes estar logeado/Registrado para utilizar este servicio.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>
                    <p>© 2023 MyBog. Todos los derechos reservados.</p>
                </nav>
            </footer>
        </div>
        <script src="./Funcionamiento_por_js/confirmacion_de_contraseña.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>