<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/estiloPreguntados.css">
        <title>ADIVINA EL PRONOMBRE PERSONAL</title>
    </head>
    <body>
        <h1>ADIVINA El PRONOMBRE</h1>

        <!-- Pantalla inicial -->
        <div id="pantalla-inicial">
            <p>�Adivina el pronombre personal?</p>
            <button class="btn" onclick="comenzarJuego()">� COMENZAR A JUGAR !</button>
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
            <h2>CORRECTAS: <span id="numCorrectas">3</span></h2>
            <h2>INCORRECTAS: <span id="numIncorrectas">2</span></h2>
            <!--<button class="btn" onclick="volverAlInicio()">VOLVER AL INICIO</button>-->
            <button class="btn" onclick="volverAlInicio()">VOLVER A JUGAR</button>

            <form action="${pageContext.request.contextPath}/controller?at=evalua" method="POST">
                <input type="hidden" name="buenas" id="buenas">
                <input type="hidden" name="malas" id="malas">
                <input type="hidden" name="idRecurso" id="idRecurso" value="${recursos[5].id}">
                <input type="hidden" name="idAlumno" id="idAlumno" value="${alumno.matricula}">
                <input type="hidden" name="fecha" id="fecha">
                <button class="btn" style="margin-top: 5px">Enviar Resultado</button>
            </form>


        </div>


        <script>
        var fechaActual = new Date().toISOString().slice(0, 10);
      // Establece la fecha actual como el valor del campo de entrada
      document.getElementById("fecha").value = fechaActual;
      cosole.log(fechaActual);
    </script>
                
        <script src="../../js/preguntasPronombresPersonales.js"></script>
    </body>
</html>