<%-- 
    Document   : pronombresPreguntados
    Created on : 9 ago 2023, 10:13:39
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/estiloPreguntados.css">
        <title>ADIVINA EL PRONOMBRE PERSONAL</title>
    </head>
    <body>
        <h1>ADIVINA El PRONOMBRE</h1>

        <!-- Pantalla inicial -->
        <div id="pantalla-inicial">
            <p>¿Adivina el pronombre personal?</p>
            <button class="btn" onclick="comenzarJuego()">¡ COMENZAR A JUGAR !</button>
        </div>

        <!-- Pantalla juego -->
        <div class="pantalla-juego" id="pantalla-juego">
            <img src="img/ad.svg" alt="" id="imgBandera">
            <div class="opciones">
                <div class="opcion" id="op0" onclick="comprobarRespuesta(0)">
                    <div class="letra" id="l0">A</div>
                    <div class="nombre" id="n0">OPCION A</div>
                </div>
                <div class="opcion" id="op1" onclick="comprobarRespuesta(1)">
                    <div class="letra" id="l1">B</div>
                    <div class="nombre" id="n1">OPCION B</div>
                </div>
                <div class="opcion" id="op2" onclick="comprobarRespuesta(2)">
                    <div class="letra" id="l2">C</div>
                    <div class="nombre" id="n2">OPCION C</div>
                </div>
            </div>
        </div>
        <!-- Pantalla final -->
        <div id="pantalla-final">
            <form action="#" method="GET">
                
                <h2>CORRECTAS: <span id="numCorrectas">3</span>  <input type="text" name="correctas" id="correctas">    </h2>
        <h2>INCORRECTAS: <span id="numIncorrectas">2</span> <input type="text" name="incorrectas" id="incorrectas"> </h2>
                


        <button class="btn" onclick="volverAlInicio()">VOLVER AL INICIO</button>




            </form>
        </div>


        <script src="../js/preguntasPronombresPersonales.js"></script>
    </body>
</html>
