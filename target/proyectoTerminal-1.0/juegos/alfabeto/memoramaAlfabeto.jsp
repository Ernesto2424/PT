<%-- 
    Document   : memoramaAlfabeto
    Created on : 4 ago 2023, 20:20:47
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/estilos22.css">
    <title>Document</title>
  </head>
  <body>
    <H1 id="mensaje"></H1>
    <main style="margin-left: 250px;">
      
      <section class="section1">
        <h1>memorama</h1>
        <table>
          <tr>
            <td><button id="0" onclick="destapar(0)"></button></td>
            <td><button id="1" onclick="destapar(1)"></button></td>
            <td><button id="2" onclick="destapar(2)"></button></td>
            <td><button id="3" onclick="destapar(3)"></button></td>
            <td><button id="4" onclick="destapar(4)"></button></td>
            <td><button id="5" onclick="destapar(5)"></button></td>
            <td><button id="6" onclick="destapar(6)"></button></td>
            <td><button id="7" onclick="destapar(7)"></button></td>
          </tr>

          <tr>
            <td><button id="8" onclick="destapar(8)"></button></td>
            <td><button id="9" onclick="destapar(9)"></button></td>
            <td><button id="10" onclick="destapar(10)"></button></td>
            <td><button id="11" onclick="destapar(11)"></button></td>
            <td><button id="12" onclick="destapar(12)"></button></td>
            <td><button id="13" onclick="destapar(13)"></button></td>
            <td><button id="14" onclick="destapar(14)"></button></td>
            <td><button id="15" onclick="destapar(15)"></button></td>
          </tr>

          <tr>
            <td><button id="16" onclick="destapar(16)"></button></td>
            <td><button id="17" onclick="destapar(17)"></button></td>
            <td><button id="18" onclick="destapar(18)"></button></td>
            <td><button id="19" onclick="destapar(19)"></button></td>
            <td><button id="20" onclick="destapar(20)"></button></td>
            <td><button id="21" onclick="destapar(21)"></button></td>
            <td><button id="22" onclick="destapar(22)"></button></td>
            <td><button id="23" onclick="destapar(23)"></button></td>
          </tr>

          <tr>
            <td><button id="24" onclick="destapar(24)"></button></td>
            <td><button id="25" onclick="destapar(25)"></button></td>
            <td><button id="26" onclick="destapar(26)"></button></td>
            <td><button id="27" onclick="destapar(27)"></button></td>
            <td><button id="28" onclick="destapar(28)"></button></td>
            <td><button id="29" onclick="destapar(29)"></button></td>
            <td><button id="30" onclick="destapar(30)"></button></td>
            <td><button id="31" onclick="destapar(31)"></button></td>
          </tr>

          <tr>
            <td><button id="32" onclick="destapar(32)"></button></td>
            <td><button id="33" onclick="destapar(33)"></button></td>
            <td><button id="34" onclick="destapar(34)"></button></td>
            <td><button id="35" onclick="destapar(35)"></button></td>
            <td><button id="36" onclick="destapar(36)"></button></td>
            <td><button id="37" onclick="destapar(37)"></button></td>
          </tr>

        </table>
        <h2><center><button class="btn" style="width: 200px; height: 80px; font-size: 25px; " id="refrescar"  onclick="location.reload()">reiniciar</button></center></h2>

      </section>
      <section class="section2">
        <h2 id="aciertos" class="estadisticas">Aciertos: 0</h2>
        <h2 id="t_restante" class="estadisticas">Tiempo: 120 seg</h2>
        <h2 id="movimientos" class="estadisticas">Movimientos: 0</h2>
      </section>
      
    </main>
    
    <footer><p>JUEGO PROGRAMADO POR TERMINETOR</p></footer>

    <script src="../../js/alfabeto.js"></script>
  </body>
</html>
