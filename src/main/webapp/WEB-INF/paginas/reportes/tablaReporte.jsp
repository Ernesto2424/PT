<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<section id="evaluaciones">

    <div class="container">
        <div class="row">
            <div class="col-md-11">
                <div>
                    <div class="card">
                        <div class="card-header">
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
                                    <!-- iterrar cada elemento de la lista  -->
                                    <c:forEach var="eva" items="${evaluaFecha}">
                                        <tr>

                                            <td>${eva.recurso.nombre}</td>
                                            <td>${eva.recurso.descripcion}</td>
                                            <td>${eva.calificacion}</td>
                                            <td>${eva.fecha}</td>

                                        </tr>
                                    </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

