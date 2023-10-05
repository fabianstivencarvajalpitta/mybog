<!DOCTYPE html>
<?php
session_start();



?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Olvido su contraseña</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./estilos/HeaderFooter.css">
    <link rel="stylesheet" href="./estilos/mundo_aventura.css">
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
                <h2 class="pm">Mundo Aventura</h2>
                <hr class="hm">
                <div class="parrafo"><br>
                <p id="p1">
                    Es el parque de atracciones #1 de Colombia por cantidad de visitantes. Reconocido con el premio Rosa de los Vientos, otorgado por ACOPET asociación colombiana de periodistas y escritores de turismo.
                </p><br>
                <p>
                    Mundo Aventura es un aporte de la Cámara de Comercio de Bogotá para todos los habitantes de la capital y sus turistas, razón por la cual, se creó la Corporación para el Desarrollo de los Parques y la Recreación en Bogotá CORPARQUES
                </p><br>
                <p>
                    Mundo Aventura es un parque donde el visitante puede disfrutar de la más completa y variada diversión con: Atracciones Mecánicas, Juegos de Destrezas y Escenarios Naturales.
                </p>
                </div>
                <img src="./Imagenes/imagen de lugares/mundo aventura.jpg" alt="" id="img1">
                 </div>
                 <iframe id="mapa1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.841954425403!2d-74.13825773865042!3d4.622270842311435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9c02e7e94713%3A0x84eeed8420ffaf97!2sParque%20Mundo%20Aventura!5e0!3m2!1ses-419!2sco!4v1693323218519!5m2!1ses-419!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                <br><br>
            
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