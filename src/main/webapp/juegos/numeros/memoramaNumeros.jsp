<%-- 
    Document   : memoramaNumeros
    Created on : 9 ago 2023, 09:31:21
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/estilos22.css">
    <title>Memorama - Numeros </title>
  </head>
  <body>
    <H1 id="mensaje"></H1>
    <main>
      
      <section class="section1">
        <h1>memorama</h1>
        <table>
          <tr>
            <td><button id="0" onclick="destapar(0)"></button></td>
            <td><button id="1" onclick="destapar(1)"></button></td>
            <td><button id="2" onclick="destapar(2)"></button></td>
            <td><button id="3" onclick="destapar(3)"></button></td>
            <td><button id="4" onclick="destapar(4)"></button></td>
          </tr>

          <tr>
            <td><button id="5" onclick="destapar(5)"></button></td>
            <td><button id="6" onclick="destapar(6)"></button></td>
            <td><button id="7" onclick="destapar(7)"></button></td>
            <td><button id="8" onclick="destapar(8)"></button></td>
            <td><button id="9" onclick="destapar(9)"></button></td>
          </tr>

          <tr>
            <td><button id="10" onclick="destapar(10)"></button></td>
            <td><button id="11" onclick="destapar(11)"></button></td>
            <td><button id="12" onclick="destapar(12)"></button></td>
            <td><button id="13" onclick="destapar(13)"></button></td>
            <td><button id="14" onclick="destapar(14)"></button></td>
          </tr>

          <tr>
            <td><button id="15" onclick="destapar(15)"></button></td>
            <td><button id="16" onclick="destapar(16)"></button></td>
            <td><button id="17" onclick="destapar(17)"></button></td>
            <td><button id="18" onclick="destapar(18)"></button></td>
            <td><button id="19" onclick="destapar(19)"></button></td>
          </tr>
        </table>
        <h2><center><button class="btn" style="width: 200px; height: 80px; font-size: 25px; " id="refrescar"  onclick="location.reload()">reiniciar</button></center></h2>

      </section>
      <section class="section2">
        <h2 id="aciertos" class="estadisticas">Aciertos: 0</h2>
        <h2 id="t_restante" class="estadisticas">Tiempo: 90 seg</h2>
        <h2 id="movimientos" class="estadisticas">Movimientos: 0</h2>
      </section>
      
    </main>
    
    <footer><p>JUEGO PROGRAMADO POR TERMINETOR</p></footer>

    <script src="../../js/memNumeros.js"></script>
  </body>
</html>
