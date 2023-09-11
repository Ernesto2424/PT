<%-- 
    Document   : reportes
    Created on : 31 ago 2023, 08:56:20
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <title>Reportes</title>
    </head>
    <body>

        <jsp:include page="WEB-INF/paginas/comunes/cabecero.jsp"/>
        <jsp:include page="WEB-INF/paginas/reportes/cabeceroReporte.jsp"/>
        <jsp:include page="WEB-INF/paginas/reportes/tablaReporte.jsp"/>
        <jsp:include page="WEB-INF/paginas/comunes/footer.jsp"/>






        <script>
            function validateDate() {
                let fechaI = document.getElementById("fechaI").value;
                let fechaF = document.getElementById("fechaF").value;

                if (fechaI > fechaF) {
                    alert("Ingrese una fecha posterior a la inicial");
                    return false;
                }

                return true;
            }
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </body>
</html>
