
<%@ page import="tienda.bonsaissur.dtos.Usuario" %>

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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
</head>
<body>

	<!-- Barra de Navegaci�n -->
	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container-fluid">
			<!-- Logo -->
			<a class="navbar-brand" href="#"> <img
				src="imagenes/LogoTienda.jpg" alt="Logo Bonsai Sur"> BONSAI
				SUR
			</a>
			<!-- Bot�n hamburguesa -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Men� -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/index.jsp">INICIO</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="arbolesDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">ARBOLES</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/arboles.jsp">Bons�is</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/arboles.jsp">Prebons�is</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="<%=request.getContextPath()%>/macetas.jsp"
						id="macetasDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">MACETAS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/macetas.jsp">Cer�mica</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/macetas.jsp">Pl�stico</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"
						href="<%=request.getContextPath()%>/abonos.jsp"
						id="abonosDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">ABONOS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/abonos.jsp">Org�nicos</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/abonos.jsp">Qu�micos</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="herramientasDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">HERRAMIENTAS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/herramientas.jsp">Corte</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/herramientas.jsp">Mantenimiento</a></li>
						</ul></li>
				</ul>
				<!-- Barra de b�squeda -->
				<form class="d-flex me-3">
					<input class="form-control me-2" type="search"
						placeholder="Buscar..." aria-label="Search">
					<button class="btn btn-outline-light" type="submit">
						<i class="bi bi-search"></i>
					</button>
				</form>
				<!-- �conos -->
				<a 
					class="me-3 icono"><i class="bi bi-cart"></i></a> <a
				 class="icono"><i
					class="bi bi-person"></i></a>
				<!-- �cono cerrar sesi�n -->
				<%
				Usuario usuario = (Usuario) session.getAttribute("Usuario");
				if (usuario != null) {
				%>
				<form action="<%=request.getContextPath()%>/cerrarSesion"
					method="post">
					<button type="submit" class="btn btn-danger">Cerrar Sesi�n</button>
				</form>
				<%
				}
				%>
			</div>
		</div>
	</nav>

	<!-- Bloque de Contenido -->
	<div class="container my-4">
		<h2 class="text-center mb-4">Acceso a tu Cuenta</h2>
		<!-- Pesta�as para alternar entre Login, Registro, Actualizaci�n y Eliminaci�n -->

		<ul class="nav nav-tabs" id="myTab" role="tablist">
				<%
		   if (usuario==null) {
%>
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="login-tab" data-bs-toggle="tab"
					data-bs-target="#login" type="button" role="tab"
					aria-controls="login" aria-selected="true">Iniciar Sesi�n</button>
			</li>
	
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="register-tab" data-bs-toggle="tab"
					data-bs-target="#register" type="button" role="tab"
					aria-controls="register" aria-selected="false">Registrarse</button>
			</li>
				<%
			}
			%>
			<%
			if (usuario != null) {
			%>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="update-tab" data-bs-toggle="tab"
					data-bs-target="#update" type="button" role="tab"
					aria-controls="update" aria-selected="false">Actualizar
					Usuario</button>
			</li>

			<%
			} else {
			%>

			<%
			}
			%>
		</ul>

	<%
  
    if (usuario==null) {
%>
		<!-- Formulario de Login -->
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="login" role="tabpanel"
				aria-labelledby="login-tab">
				<form class="mt-4 formulario" id="form_login"
					action="<%=request.getContextPath()%>/login" method="POST">
					<div class="mb-3">
						<label for="correoLogin" class="form-label">Correo
							Electr�nico</label> <input type="email" class="form-control"
							name="correo" id="correoLogin"
							placeholder="Introduce tu correo electr�nico" required>
					</div>
					<div class="mb-3">
						<label for="contrasenyaLogin" class="form-label">Contrase�a</label>
						<input type="password" class="form-control" name="contrasena"
							id="contrasenyaLogin" placeholder="Introduce tu contrase�a"
							required>
					</div>
					<button type="submit" class="btn btn-primary w-100">Iniciar
						Sesi�n</button>
				</form>
				<br>
				<div class="text-center mt-3">
					<a href="recuperar.jsp"
						class="btn btn-link text-decoration-none w-100"> �Olvidaste tu
						contrase�a? </a>
				</div>
			</div>
	
			<!-- Formulario de Registro -->
			<div class="tab-pane fade" id="register" role="tabpanel"
				aria-labelledby="register-tab">
				<form class="mt-4" action="<%=request.getContextPath()%>/registro"
					method="post">
					<div class="mb-3">
						<label for="nombreRegistro" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombreRegistro"
							name="nombre" placeholder="Introduce tu nombre" required>
					</div>
					<div class="mb-3">
						<label for="apellidosRegistro" class="form-label">Apellidos</label>
						<input type="text" class="form-control" id="apellidosRegistro"
							name="apellidos" placeholder="Introduce tus apellidos" required>
					</div>
					<div class="mb-3">
						<label for="correoRegistro" class="form-label">Correo
							Electr�nico</label> <input type="email" class="form-control"
							id="correoRegistro" name="correo"
							placeholder="Introduce tu correo electr�nico" required>
					</div>
					<div class="mb-3">
						<label for="contrasenaRegistro" class="form-label">Contrase�a</label>
						<input type="password" class="form-control"
							id="contrasenaRegistro" name="contrasena"
							placeholder="Introduce tu contrase�a" required>
					</div>
					<div class="mb-3">
						<label for="direccionRegistro" class="form-label">Direcci�n</label>
						<input type="text" class="form-control" id="direccionRegistro"
							name="direccion" placeholder="Introduce tu direcci�n" required>
					</div>
					<div class="mb-3">
						<label for="telefonoRegistro" class="form-label">Tel�fono</label>
						<input type="text" class="form-control" id="telefonoRegistro"
							name="telefono" placeholder="Introduce tu tel�fono" required>
					</div>
					<div class="mb-3">
						<label for="rolRegistro" class="form-label">Rol</label> <select
							class="form-control" id="rolRegistro" name="rol" required>
							<option value="Usuario">Usuario</option>
						</select>
					</div>
					<button type="submit" class="btn btn-success w-100">Registrarse</button>
				</form>
			</div>
					<%
    } 
%>
			<%
  
    if (usuario!=null) {
%>
			<!-- Formulario de Actualizaci�n de Usuario -->
			<div class="tab-pane fade" id="update" role="tabpanel"
				aria-labelledby="update-tab">
				<form action="<%=request.getContextPath()%>/actualizar"
					method="POST">
					<div class="mb-3">
						<label for="nombreUpdate" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombreUpdate" name="nombre"
							value="<%=  usuario.getNombre()%>" required>
					</div>
					<div class="mb-3">
						<label for="apellidosUpdate" class="form-label">Apellidos</label>
						<input type="text" class="form-control" id="apellidosUpdate"
							name="apellidos" value="<%= usuario.getApellidos() %>" required>
					</div>

					<div class="mb-3">
						<label for="direccionUpdate" class="form-label">Direcci�n</label>
						<input type="text" class="form-control" id="direccionUpdate"
							name="direccion" value="<%= usuario.getDireccion() %>" required>
					</div>
					<div class="mb-3">
						<label for="telefonoUpdate" class="form-label">Tel�fono</label> <input
							type="text" class="form-control" id="telefonoUpdate"
							name="telefono" value="<%= usuario.getTelefono() %>" required>
					</div>
					<button type="submit" class="btn btn-warning w-100">Actualizar
						Usuario</button>
				</form>
			</div>
		<%
    } 
%>

		</div>

	</div>
	

	<!-- Pie de p�gina -->
	<footer
		style="background-color: #5B3E34; color: #C4D1AA; text-align: center; padding: 15px 0; margin-top: 20px;">
		<p style="margin: 0; font-size: 1rem;">� 2024 Bonsai Sur. Todos
			los derechos reservados.</p>
	</footer>

	<!-- Bootstrap JS Bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>