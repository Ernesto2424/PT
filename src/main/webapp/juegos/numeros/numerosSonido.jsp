<%-- 
    Document   : numerosSonido
    Created on : 9 ago 2023, 09:35:58
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../css/estilos22.css">
    <title>Sonido de los Numeros</title>
  </head>
  <body>
    <H1 id="mensaje"></H1>
    <main style="margin-right: 180px;">
      
      <section class="section1">
        <h1>memorama</h1>
        <table>
          <tr>
            <td><button id="0" onclick="s1.play()"><img src="/img/numeros/1.png" alt=""></button></td>
            <td><button id="1" onclick="s2.play()"><img src="/img/numeros/2.png" alt=""></button></td>
            <td><button id="2" onclick="s3.play()"><img src="/img/numeros/3.png" alt=""></button></td>
            <td><button id="3" onclick="s4.play()"><img src="/img/numeros/4.png" alt=""></button></td>
            <td><button id="4" onclick="s5.play()"><img src="/img/numeros/5.png" alt=""></button></td>
          </tr>

          <tr>
            <td><button id="5" onclick="s6.play()"><img src="/img/numeros/6.png" alt=""></button></td>
            <td><button id="6" onclick="s7.play()"><img src="/img/numeros/7.png" alt=""></button></td>
            <td><button id="7" onclick="s8.play()"><img src="/img/numeros/8.png" alt=""></button></td>
            <td><button id="8" onclick="s9.play()"><img src="/img/numeros/9.png" alt=""></button></td>
            <td><button id="9" onclick="s10.play()"><img src="/img/numeros/10.png" alt=""></button></td>
          </tr>

          <tr>
            <td><button id="10" onclick="s11.play()"><img src="/img/numeros/11.png" alt=""></button></td>
            <td><button id="11" onclick="s12.play()"><img src="/img/numeros/12.png" alt=""></button></td>
            <td><button id="12" onclick="s13.play()"><img src="/img/numeros/13.png" alt=""></button></td>
            <td><button id="13" onclick="s14.play()"><img src="/img/numeros/14.png" alt=""></button></td>
            <td><button id="14" onclick="s15.play()"><img src="/img/numeros/15.png" alt=""></button></td>
          </tr>

          <tr>
            <td><button id="15" onclick="s16.play()"><img src="/img/numeros/16.png" alt=""></button></td>
            <td><button id="16" onclick="s17.play()"><img src="/img/numeros/17.png" alt=""></button></td>
            <td><button id="17" onclick="s18.play()"><img src="/img/numeros/18.png" alt=""></button></td>
            <td><button id="18" onclick="s19.play()"><img src="/img/numeros/19.png" alt=""></button></td>
            <td><button id="19" onclick="s20.play()"><img src="/img/numeros/20.png" alt=""></button></td>
          </tr>
        </table>
        
      </section>
      
    </main>
    
    <footer><p>JUEGO PROGRAMADO POR TERMINETOR</p></footer>

    <script src="../../js/numerosSonidos.js"></script>
  </body>
</html>
