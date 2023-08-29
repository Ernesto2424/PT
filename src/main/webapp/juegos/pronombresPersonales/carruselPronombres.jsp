<%-- 
    Document   : carruselPronombres
    Created on : 9 ago 2023, 09:50:15
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <title>Carrusel - Pronombres Personales</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="../../css/estilosCarrusel.css">
</head>

<style>
    .play{
        position: absolute;
        margin-top: 400px;
        padding: 20px 50px;
        font-size: large;
        cursor: pointer;
    }

    .texto{
        position: absolute;
        margin-bottom: 400px;
        padding: 20px 50px;
    }
    
</style>

<body>
    <div class="slider-container" item-display-d="4" item-display-t="3" item-display-m="1" style="margin-top: 60px;">
        <div class="slider-width">
            <div class="item" id="yo"><label class="texto">Neh</label> <button class="play" onclick="yo.play()">YO</button><img src="../../img/img_familia/yo.png" alt=""></div>
            <div class="item" id="tu"><label class="texto">Teh</label> <button class="play" onclick="abuelo.play()">TU</button><img src="../../img/img_familia/tu.png" alt=""></div>
            <div class="item" id="el"><label class="texto">Yehuatl</label> <button class="play" onclick="abuela.play()">ELLA</button><img src="../../img/img_familia/ella.png" alt=""></div>
            <div class="item" id="ella"><label class="texto">yeh</label> <button class="play" onclick="papa.play()">EL</button><img src="../../img/img_familia/el.png" alt=""></div>
            <div class="item" id="usted"><label class="texto">Tehuatzin </label> <button class="play" onclick="mama.play()">USTED</button><img src="../../img/img_familia/usted.png" alt=""></div>
            <div class="item" id="nosotros"><label class="texto">Tehuan</label> <button class="play" onclick="hermanoMe.play()">NOSOTROS</button><img src="../../img/img_familia/nosotros.png" alt=""></div>
            <div class="item" id="nosotras"><label class="texto">tehuantin</label> <button class="play" onclick="hermanaMe.play()">NOSOTRAS</button><img src="../../img/img_familia/nosotras.png" alt=""></div>
            <div class="item" id="ustedes"><label class="texto">Nemehuan</label> <button class="play" onclick="tio.play()">USTEDES</button><img src="../../img/img_familia/ustedes.png" alt=""></div>
            <div class="item" id="ellas"><label class="texto">Yehuan</label> <button class="play" onclick="tia.play()">ELLAS</button><img src="../../img/img_familia/ellas.png" alt=""></div>
            <div class="item" id="ellos"><label class="texto">yehuantin</label> <button class="play" onclick="tios.play()">ELLOS</button><img src="../../img/img_familia/ellos.png" alt=""></div>
            
            
        </div>
    </div>
    <button type="button" class="btn" onclick="prev()" >Atras</button>
    <button type="button" class="btn" onclick="next()">Siguiente</button>

    <script src="../../js/scriptCarrusel.js"></script>
</body>
</html>
