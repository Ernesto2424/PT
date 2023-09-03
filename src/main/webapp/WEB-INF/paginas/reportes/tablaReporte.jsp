<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_MX"/>

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
                                    <!-- iterrar cada elemento de la lista -->

                                    <c:forEach var="inv" items="${stock}">
                                        <tr>
                                            <td>${inv.producto.codigo}</td>
                                            <td>${inv.producto.descripcion}</td>
                                            <td>${inv.cantidad}</td>
                                            <td><fmt:formatNumber value="${inv.producto.costoUnitario}" type="currency"></fmt:formatNumber></td>
                                            <td><fmt:formatNumber value="${inv.actual}" type="currency"></fmt:formatNumber></td>
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

