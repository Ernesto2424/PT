

<nav class="navbar navbar-expand-lg bg-body-tertiary" >
        <div class="container-fluid">
            <a class="navbar-brand" href="/index.html"> <img src="logo.png" alt="logo" width="150px" height="100px"> </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Juegos
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/juegos.jsp#alfabeto">El Alfabeto</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/juegos.jsp#numeros">Los Numeros</a></li>
                      <li><a class="dropdown-item" href="#">Los Pronombres Personales</a></li>
                      <li><a class="dropdown-item" href="#">El Cuerpo</a></li>
                      <li><a class="dropdown-item" href="#">La Familia</a></li>
                      <li><a class="dropdown-item" href="#">TEMA 6</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">TEMA ADICIONAL</a></li>
                    </ul>
                  </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">Canciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Cuentos</a>
              </li>
              
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Recursos
                </a>
                <ul class="dropdown-menu">
                    <!<!-- rv: Recursos visuales -->
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/controller?at=rv">Visuales</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/controller?at=rav">AudioVisuales</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/controller?at=rtest">Test</a></li>
                </ul>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">-->
              <a class="nav-link active" href="${pageContext.request.contextPath}/controller?at=cerrarSesion">${alumno.nombre} ${alumno.primerApellido} ${alumno.segundoApellido} (SALIR)</a>
              
            </form>
          </div>
        </div>
      </nav>