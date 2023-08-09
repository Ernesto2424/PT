<%-- 
    Document   : carruselFamilia
    Created on : 9 ago 2023, 10:00:33
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Carrusel - Familia</title>
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
            <div class="item" id="yo"><label class="texto">Na</label> <button class="play" onclick="yo.play()">YO</button><img src="/img/img_familia/yo.png" alt=""></div>
            <div class="item" id="abuelo"><label class="texto">nototatah</label> <button class="play" onclick="abuelo.play()">ABUELO</button><img src="/img/img_familia/abuelo.png" alt=""></div>
            <div class="item" id="abuela"><label class="texto">notonanan </label> <button class="play" onclick="abuela.play()">ABUELA</button><img src="/img/img_familia/abuela.png" alt=""></div>
            <div class="item" id="papa"><label class="texto">notatah</label> <button class="play" onclick="papa.play()">PÁPA</button><img src="/img/img_familia/papa.png" alt=""></div>
            <div class="item" id="mama"><label class="texto">nonanan </label> <button class="play" onclick="mama.play()">MÁMA</button><img src="/img/img_familia/mama.png" alt=""></div>
            <div class="item" id="hermanoMe"><label class="texto">nochocho tlacatl</label> <button class="play" onclick="hermanoMe.play()">HERMANO</button><img src="/img/img_familia/hermano.png" alt=""></div>
            <div class="item" id="hermanaMe"><label class="texto">nochocho cihuatl</label> <button class="play" onclick="hermanaMe.play()">HERMANA</button><img src="/img/img_familia/hermana.png" alt=""></div>
            <div class="item" id="tio"><label class="texto">notlayi</label> <button class="play" onclick="tio.play()">TIO</button><img src="/img/img_familia/tio.png" alt=""></div>
            <div class="item" id="tia"><label class="texto">noahui</label> <button class="play" onclick="tia.play()">TIA</button><img src="/img/img_familia/tia.png" alt=""></div>
            <div class="item" id="tios"><label class="texto">notlayihuan</label> <button class="play" onclick="tios.play()">TIOS</button><img src="/img/img_familia/tios.png" alt=""></div>
            <div class="item" id="tias"><label class="texto">noahuihuan</label> <button class="play" onclick="tias.play()">TIAS</button><img src="/img/img_familia/tias.png" alt=""></div>
            <div class="item" id="prims"><label class="texto">nomachicnihuan</label> <button class="play" onclick="prims.play()">PRIMOS</button><img src="/img/img_familia/primos.png" alt=""></div>
            <div class="item" id="sobrin"><label class="texto">nomachconehuan</label> <button class="play" onclick="sobrin.play()">SOBRINOS</button><img src="/img/img_familia/sobrinos.png" alt=""></div>
            <div class="item" id="niet"><label class="texto">noixhuihuan</label> <button class="play" onclick="niet.play()">NIETO</button><img src="/img/img_familia/nietos.png" alt=""></div>

            
        </div>
    </div>
    <button type="button" class="btn" onclick="prev()" >Atras</button>
    <button type="button" class="btn" onclick="next()">Siguiente</button>

    <script src="../../js/scriptCarrusel.js"></script>
</body>
</html>
