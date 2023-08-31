<%-- 
    Document   : index
    Created on : 9 jul 2023, 13:55:55git status
    Author     : ernes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope['usuario']!=null}">
    <% response.sendRedirect("/proyectoTerminal/controller?at=menu");%>
</c:if>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <title>Iniciar Sesión</title>

        <style>

            body{
                background: #ffe259;
                background: linear-gradient(to right, #ffa751, #ffe259);
            }


            .bg{
                background-image: url(https://github.com/Ernesto2424/curso-git/blob/main/img/nahu.png?raw=true);
                background-position: center center;
            }
        </style>


    </head>
    <body>

        <div class="container w-75 bg-light mt-5 rounded shadow">
            <div class="row align-items-sm-stretch">
                <div class="col bg d-none d-lg-block col-md-5 col-lg-5 col-xl-6 rounded">




                </div>
                <div class="col bg-white  rounded">

                    <div class="text-end">
                        <img src="logo.png" alt="" width="81px">
                    </div>

                    <p style="color: #ff0000">${mensaje}</p>

                    <h2 class="fw-bold text-center py-5">Bienvenido</h2>

                    <!--login-->

                    <form action="${pageContext.request.contextPath}/controller?at=login" method="POST" class="needs-validation" novalidate>

                        <div class="mb-4">
                            <label for="matricula" class="form-label">Matricula:</label>
                            <input type="text" name="matricula" id="validationCustom01" required class="form-control"
                                   onkeypress="return checka(event)" maxlength="18">
                            <div class="invalid-feedback">
                                Ingrese su matricula o CURP
                            </div>
                        </div>

                        <div class="mb-4">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="password" name="password" id="validationCustom01" class="form-control" required="true">
                            <div class="invalid-feedback">
                                Ingrese su contraseña
                            </div>
                        </div>

                        <div class="mb-4">

                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-danger">Iniciar Sesión</button>
                        </div>

                        <div class="my-3">
                            <span>No tienes Cuenta? <a href="${pageContext.request.contextPath}/controller?at=register">Registrate</a></span> <br>
                            <span><a href="">Recuperar Contraseña</a></span>

                        </div>
                    </form>

                </div>
            </div>
        </div>





        <script>
            function checka(e) {
                                    tecla = (document.all) ? e.keyCode : e.which;

                                    //Tecla de retroceso para borrar, siempre la permite
                                    if (tecla == 8) {
                                        return true;
                                    }

                                    // Patrón de entrada, en este caso solo acepta numeros y letras
                                    patron = /[A-Za-z0-9]/;
                                    tecla_final = String.fromCharCode(tecla);
                                    return patron.test(tecla_final);
                                }</script>
        <script>
                                       // Example starter JavaScript for disabling form submissions if there are invalid fields
                                       (() => {


// Fetch all the forms we want to apply custom Bootstrap validation styles to
                                           const forms = document.querySelectorAll('.needs-validation');

// Loop over them and prevent submission
                                           Array.from(forms).forEach(form => {
                                               form.addEventListener('submit', event => {
                                                   if (!form.checkValidity()) {
                                                       event.preventDefault();
                                                       event.stopPropagation();
                                                   }

                                                   form.classList.add('was-validated');
                                               }, false);
                                           });
                                       })();
        </script>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </body>
</html>