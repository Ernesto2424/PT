
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope['alumno']==null}">
    <% response.sendRedirect("index.jsp");%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <title>Acerca De</title>
    </head>
    <body>

        <jsp:include page="WEB-INF/paginas/comunes/cabecero.jsp"></jsp:include>
        <jsp:include page="WEB-INF/paginas/acercaDe/mision.jsp"></jsp:include>
        <jsp:include page="WEB-INF/paginas/acercaDe/vision.jsp"></jsp:include>
        <jsp:include page="WEB-INF/paginas/menu/tarjeta2.jsp"></jsp:include>
        <jsp:include page="WEB-INF/paginas/comunes/footer.jsp"></jsp:include>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </body>
</html>
