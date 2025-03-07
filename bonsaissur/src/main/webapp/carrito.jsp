<%@ page import="tienda.bonsaissur.dtos.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bonsai Sur</title>
        <link rel="icon" href="imagenes/LogoTienda.jpg" type="image/jpg">
        <!-- CSS -->
        <link rel="stylesheet" href="estilo.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    </head>

    <body>
        <!-- Barra de Navegación -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <!-- Logo -->
                <a class="navbar-brand" href="#">
                    <img src="imagenes/LogoTienda.jpg" alt="Logo Bonsai Sur">
                    BONSAI SUR
                </a>
                <!-- Botón hamburguesa -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Menú -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">INICIO</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="arbolesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">ARBOLES</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="arboles.jsp">Bonsáis</a></li>
                                <li><a class="dropdown-item" href="arboles.jsp">Prebonsáis</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="macetas.jsp" id="macetasDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">MACETAS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="macetas.jsp">Cerámica</a></li>
                                <li><a class="dropdown-item" href="macetas.jsp">Plástico</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="abonos.jsp" id="abonosDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">ABONOS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="abonos.jsp">Orgánicos</a></li>
                                <li><a class="dropdown-item" href="abonos.jsp">Químicos</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="herramientasDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">HERRAMIENTAS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="herramientas.jsp">Corte</a></li>
                                <li><a class="dropdown-item" href="herramientas.jsp">Mantenimiento</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Barra de búsqueda -->
                    <form class="d-flex me-3">
                        <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Search">
                        <button class="btn btn-outline-light" type="submit"><i class="bi bi-search"></i></button>
                    </form>
                    <!-- Íconos -->
               <a href="carrito.jsp" class="me-3 icono"><i class="bi bi-cart"></i></a>
				<%
				Usuario usuario = (Usuario) session.getAttribute("Usuario");
				if (usuario != null) {
					if ("Administrador".equals(usuario.getRol())) {
				%>
				<a href="login.jsp" class="icono"><i class="bi bi-person"></i></a>
				<%
				} else {
				%>
				<a href="loginUsu.jsp" class="icono"><i class="bi bi-person"></i></a>
				<%
				}
				} else {
				%>
				<a href="loginUsu.jsp" class="icono"><i class="bi bi-person"></i></a>
				<%
				}
				%>
                </div>
            </div>
        </nav>

        <!-- Bloque de Contenido -->
        <section style="background-color: #f4f4f4; padding: 30px 0;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <!-- Contenido de la página -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Pie de página -->
        <footer style="background-color: #5B3E34; color: #C4D1AA; text-align: center; padding: 15px 0; margin-top: 20px;">
            <p style="margin: 0; font-size: 1rem;">
                © 2024 Bonsai Sur. Todos los derechos reservados.
            </p>
        </footer>

        <!-- Bootstrap JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
