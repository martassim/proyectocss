<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>Viajes escogidos</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css">
	</head>
	<body>
		<jsp:include page="_encabezado.jsp" />
		<jsp:include page="_menu.jsp" />
		<fmt:setLocale value="en_US" scope="session"/>
		<article id="main">
						<section section id="one"  class="wrapper style2">
							<div class="inner" >

							
		
		<c:if test="${empty carritoForm or empty carritoForm.lineaCarrito}">
			<header class="major" style="text-align: center;">
								<h2>No ha escogido ningún viaje</h2><br>
								<p><a href="${pageContext.request.contextPath}/listaDestino">Mostrar la Lista de Destinos</a></p>
								</header>
			
		</c:if>
		
		<c:if test="${not empty carritoForm and not empty carritoForm.lineaCarrito}">
		<header class="major" style="text-align: center;">
								<h2>Viajes escogidos</h2>
								<p>elija el numero de plazas para cada viaje</p>
								</header>
			<form:form method="POST" modelAttribute="carritoForm" action="${pageContext.request.contextPath}/carritoCompra">
			 <ul class="features">
				<c:forEach items="${carritoForm.lineaCarrito}" var="lineaCarritoInfo" varStatus="varStatus">
					 <li><div class="product-preview-container">
					
						
							<div class="image" ><img class="product-image" style="width: 100%;" src="${pageContext.request.contextPath}/imagenDestino?iddestino=${lineaCarritoInfo.destinoInfo.iddestino}"/><br>
							</div><br>
							
							 Id: ${lineaCarritoInfo.destinoInfo.iddestino}<form:hidden path="lineaCarrito[${varStatus.index}].destinoInfo.iddestino"/><br>
							 Nombre: ${lineaCarritoInfo.destinoInfo.nombre}<br>
							 Descripcion: ${lineaCarritoInfo.destinoInfo.descripcioncorta}<br>
							 Fecha: <fmt:formatDate value="${lineaCarritoInfo.destinoInfo.fecha}" pattern="dd-MM-yyyy HH:mm"/><br>
							 Nº de Plazas: <fmt:formatNumber value="${lineaCarritoInfo.destinoInfo.numplazas}" type="currency"/><br>
							 Precio: <span class="price"><fmt:formatNumber value="${lineaCarritoInfo.destinoInfo.precio}" type="currency"/></span><br>
							 
							<div class="row uniform">
                       		<div class="3u 3u$(xsmall)">
							Cantidad: <form:input path="lineaCarrito[${varStatus.index}].cantidad" />
							</div>
							</div>
							<br>
							 Subtotal: <span class="subtotal"><fmt:formatNumber value="${lineaCarritoInfo.preciototal}" type="currency"/></span><br>
							 <a href="${pageContext.request.contextPath}/eliminarDestinoCarritoCompra?iddestino=${lineaCarritoInfo.destinoInfo.iddestino}"> Borrar </a><br>
						</div></li>
					
				</c:forEach>
				</ul>
				<div style="clear: both"></div>
				<input class="button-update-sc special" type="submit" value="Actualizar cantidad"/>&nbsp&nbsp
				<a class="navi-item" href="${pageContext.request.contextPath}/carritoCompraComprador">Introducir datos de contacto y pagar</a>&nbsp&nbsp
				<a class="navi-item" href="${pageContext.request.contextPath}/listaDestino">Continua Comprando</a>
			</form:form>
		</c:if>
		
		      </div>
			</section>
		</article>	
		
		<jsp:include page="_piePagina.jsp" />
		 <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js">type="text/javascript"><jsp:text> </jsp:text></script><![endif]-->
			<script src="${pageContext.request.contextPath}/assets/js/main.js">type="text/javascript"><jsp:text> </jsp:text></script>
 
	</body>
</html>