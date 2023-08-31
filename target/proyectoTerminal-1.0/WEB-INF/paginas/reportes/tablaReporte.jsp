
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
    <th>ID</th>
    <th>NOMBRE</th>
    <th>DESCRIPCIÓN</th>
    <th>RESULTADO</th>

    <c:forEach var="datos" items="">
        <tr>
            <td>id</td>
            <td>nomibreExa</td>
            <td>Descr</td>
            <td>calf</td>
        </tr>
    </c:forEach>
    
</table>