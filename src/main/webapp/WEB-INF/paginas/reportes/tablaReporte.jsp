<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<section id="evaluaciones">

    <div class="container">
        <div class="row">
            <div class="col-md-11">
                <div>
                    <div class="card">
                        <div class="card-header">
                            <div class="form-group">

                                <h4>EVALUACIONES (TEST)</h4>
                                <table class="table table-striped">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>NOMBRE</th>
                                            <th>DESCRIPCION</th>
                                            <th>RESULTADO</th>
                                            <th>FECHA</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:set var="promedio" value="0" />
                                        <c:set var="tam" value="0" />
                                        <!-- iterrar cada elemento de la lista  -->
                                        <c:forEach var="eva" items="${evaluaFecha}">
                                            <tr>
                                                <c:set var="promedio" value="${promedio + eva.calificacion}" />
                                                <c:set var="tam" value="${tam + 1}" />
                                                <td>${eva.recurso.nombre}</td>
                                                <td>${eva.recurso.descripcion}</td>
                                                <td>${eva.calificacion} / 10</td>
                                                <td>${eva.fecha}</td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>

                                </table>

                            </div>

                        </div>


                    </div>
                    <br>
                    <h3></h3>
                    <c:set var="prom" value="${promedio / tam}" />
                    
                    <c:if test="${tam>0}">
        <!-- El contenido dentro de esta etiqueta se ejecutará si la condición es verdadera -->
        <h5>Tu promedio es: <fmt:formatNumber value="${prom}" maxFractionDigits="1" /> </h5>
                    </c:if>
                    

                    <button class="btn btn-outline-light" onclick="ocultarDiv()" id="btnPDF"><img src="https://github.com/Ernesto2424/PT/blob/main/src/main/webapp/img/pdf.png?raw=true" alt="alt" width="60px" height="60px"/></button>
                </div>
            </div>
        </div>
    </div>

</section>



