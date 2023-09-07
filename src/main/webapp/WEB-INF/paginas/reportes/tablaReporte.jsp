
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
                                        <th>ID EV</th>
                                        <th>NOMBRE</th>
                                        <th>DESCRIPCION</th>
                                        <th>RESULTADO</th>

                                    </tr>
                                </thead>

                                    <tbody>
                                        <!-- iterrar cada elemento de la lista  -->
                                        <c:forEach var="eva" items="${evaluaciones}">
                                    <tr>
                                        <td>${eva.id}</td>
                                        <td>${eva.recurso.nombre}</td>
                                        <td>${eva.recurso.descripcion}</td>
                                        <td>${eva.calificacion}</td>
                                    </tr>
                                    </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

