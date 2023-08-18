<%-- 
    Document   : alfabetoSonido
    Created on : 4 ago 2023, 19:47:09
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

  <style>
    button:hover{
    cursor: pointer;
    padding-bottom: 30px;
}
  </style>


  <body>
    <H1 id="mensaje"></H1>
    <main style="margin-left: 400px; margin-top: 10px;">
      
      <section class="section1">
        <h1>El alfabeto Nahuatl</h1>
        <table>
          <tr>
              <td><button style="height: 150px;" id="0" onclick="sa.play()"><img src="../../img/imagenes_palabras/a.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="1" onclick="sw.play()"><img src="../../img/imagenes_palabras/w.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="2" onclick="sch.play()"><img src="../../img/imagenes_palabras/ch.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="3" onclick="se.play()"><img src="../../img/imagenes_palabras/e.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="4" onclick="sh.play()"><img src="../../img/imagenes_palabras/h.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="5" onclick="si.play()"><img src="../../img/imagenes_palabras/i.jpg" alt=""></button></td>
           
          </tr>

          <tr>
            <td><button style="height: 150px;" id="6" onclick="sk.play()"><img src="../../img/imagenes_palabras/k.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="7" onclick="sku.play()"><img src="../../img/imagenes_palabras/ku.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="8" onclick="sl.play()"><img src="../../img/imagenes_palabras/l.png" alt=""></button></td>
            <td><button style="height: 150px;" id="9" onclick="sm.play()"><img src="../../img/imagenes_palabras/m.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="10" onclick="sn.play()"><img src="../../img/imagenes_palabras/n.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="11" onclick="so.play()"><img src="../../img/imagenes_palabras/o.jpg" alt=""></button></td>
            
          </tr>

          <tr>
            <td><button style="height: 150px;" id="12" onclick="sp.play()"><img src="../../img/imagenes_palabras/p.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="13" onclick="ss.play()"><img src="../../img/imagenes_palabras/s.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="14" onclick="st.play()"><img src="../../img/imagenes_palabras/t.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="15" onclick="stl.play()"><img src="../../img/imagenes_palabras/tl.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="16" onclick="stz.play()"><img src="../../img/imagenes_palabras/tz.jpg" alt=""></button></td>
            <td><button style="height: 150px;" id="17" onclick="sx.play()"><img src="../../img/imagenes_palabras/x.jpg" alt=""></button></td>                        
          </tr>

          <tr> <td><button style="height: 150px;" id="18" onclick="sy.play()"><img src="../../img/imagenes_palabras/y.jpg" alt=""></button></td></tr>

        </table>
       
      </section>
      
      
    </main>
    
    <footer><p>JUEGO PROGRAMADO POR TERMINETOR</p></footer>

    <script src="../../js/alfabetoSonido.js"></script>
  </body>
</html>
