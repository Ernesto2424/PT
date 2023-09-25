<%-- Document : reportes Created on : 31 ago 2023, 08:56:20 Author : ernes --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
    />
    <script src="https://kit.fontawesome.com/9c67a9a5ec.js" crossorigin="anonymous"></script>
    <title>Reportes</title>
  </head>
  <body onload="cargarValores()">
    <jsp:include page="WEB-INF/paginas/comunes/cabecero.jsp" />
    <div id="CyT">
      <jsp:include page="WEB-INF/paginas/reportes/cabeceroReporte.jsp" />
      <jsp:include page="WEB-INF/paginas/reportes/tablaReporte.jsp" />
    </div>
    <jsp:include page="WEB-INF/paginas/comunes/footer.jsp" />

    <script>
      function validateDate() {
        let fechaI = document.getElementById("fechaI").value;
        let fechaF = document.getElementById("fechaF").value;

        if (fechaI > fechaF) {
          alert("Ingrese una fecha posterior a la inicial");
          return false;
        }
        localStorage.setItem("fechaIni", fechaI);
        localStorage.setItem("fechaFin", fechaF);

        return true;
      }

      function cargarValores() {
        let v1 = localStorage.getItem("fechaIni");
        let v2 = localStorage.getItem("fechaFin");

        document.getElementById("fechaI").value = v1;
        document.getElementById("fechaF").value = v2;
      }

    function ocultarDiv() {
  var div = document.getElementById("cabeza");
  div.style.display = "none";
  var div2 = document.getElementById("pie");
  div2.style.display = "none";
  var btn = document.getElementById("btnPDF");
  btn.style.display = "none";
  var btn2 = document.getElementById("btnEv");
  btn2.style.display = "none";
  var logo = document.getElementById("logoAxo");
  logo.style.display = "block";
  var pf = document.getElementById("pyl");
  pf.style.display = "block";
  window.print();
  mostrarDiv();
}

function mostrarDiv() {
  var div = document.getElementById("cabeza");
  div.style.display = "block";
  var div2 = document.getElementById("pie");
  div2.style.display = "block";
  var btn = document.getElementById("btnPDF");
  btn.style.display = "block";
  var btn2 = document.getElementById("btnEv");
  btn2.style.display = "block";
  var logo = document.getElementById("logoAxo");
  logo.style.display = "none";
  var pf = document.getElementById("pyl");
  pf.style.display = "none";
}

      /*
             function reporte(at) {
             $.get('../proyectoTerminal/controller?at=evDate', function (r) {
             if(r){
             $('#at').val(at);
             $('#lista').val(JSON.stringify(r));
             $('#frameReporte').submit();
             }else{
             alert('no se pudo generar el reporte: '+r);
             }
             });
             
             }*/

     
     
     
    </script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.3.2/html2canvas.js"></script>
  </body>
</html>
