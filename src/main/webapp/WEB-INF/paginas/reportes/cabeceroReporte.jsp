
<!--<div class="container" id="cuerpoCabecero">
    <h1>REPORTE #1</h1>
    <h3 id="nombre">Ernesto Flores Machuca</h3>
    <h3 id="grado">Grado:C</h3>
    <h3 id="turno">Turno:Matutino</h3>
    <h3>De:</h3>
    <input type="date" name="inicio" id="inicio">
    <h3>Hasta:</h3>
    <input type="date" name="fin" id="fin">
</div>-->
<br>
<div class="container-md">
    
    <form class="row g-3" action="${pageContext.request.contextPath}/controller?at=evDate">
  <div class="col-md-11">
      <h1 class="display-6 text-center">REPORTE #1</h1>
  </div>
  <div class="col-md-11">
      <h3 id="nombre" class="h3 blockquote ">${alumno.nombre} ${alumno.primerApellido} ${alumno.segundoApellido}</h3>
  </div>
  <div class="col-md-6">
    <h3 id="grado" class="h3 blockquote">Grupo: ${alumno.grupo}</h3>
  </div>
    <div class="col-md-6">
    <h3 id="turno" class="h3 blockquote">Turno: ${alumno.turno}</h3>
  </div>
  <div class="col-md-6">
      <label class="form-label h3 blockquote">De:</label>
      <input type="date" name="fechaI" id="fechaI" required="true">
  </div>
    <div class="col-md-6">
        <label class="form-label h3 blockquote">Hasta:</label>
    <input type="date" name="fechaF" id="fechaF" required="true">
  </div>  
  <input type="hidden" name="matricula" value="${alumno.matricula}">
  <div class="col-12">
      <input type="submit" class="btn btn-primary" value="Generar Reporte">
  </div>
</form>
    </div>
<br>