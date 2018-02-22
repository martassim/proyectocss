<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shopping Cart Confirmation</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body style="text-align: center;">
		<jsp:include page="_encabezado.jsp" />
		<jsp:include page="_menu.jsp" />
		<fmt:setLocale value="en_US" scope="session"/>
		<div class="customer-info-container">
		<article id="main">
						<section class="wrapper style2">
							<div class="inner" >
			
		<header class="major" style="text-align: center;">
		<h4>Informacion del Comprador:</h4><br>
		<p>
		Name: ${miCarrito.compradorInfo.nombrecomprador}<br>
				Email: ${miCarrito.compradorInfo.mailcomprador}<br>
				Phone: ${miCarrito.compradorInfo.telefonocomprador}<br>
				Address: ${miCarrito.compradorInfo.direccioncomprador}<br>
			<br>
			<h4>Resumen del Carrito: </h4><br>
			
				Quantity: ${miCarrito.cantidadTotal}<br>
				Total: <span class="total"><fmt:formatNumber value="${miCarrito.precioTotal}" type="currency"/></span><br>
		</p>
		</header>
			
		<ul class="features">
			<c:forEach items="${miCarrito.lineaCarrito}" var="lineaCarritoInfo">
				
					<li>
					<div class="product-preview-container">
						<img class="product-image"  style="width: 100%;" src="${pageContext.request.contextPath}/imagenDestino?iddestino=${lineaCarritoInfo.destinoInfo.iddestino}" /><br>
						Id: ${lineaCarritoInfo.destinoInfo.iddestino} <input type="hidden" name="iddestino" value="${lineaCarritoInfo.destinoInfo.iddestino}" /><br>
						Nombre: ${lineaCarritoInfo.destinoInfo.nombre}<br>
						Descripcion: ${lineaCarritoInfo.destinoInfo.descripcioncorta}<br>
						Fecha: <fmt:formatDate value="${lineaCarritoInfo.destinoInfo.fecha}" pattern="dd-MM-yyyy HH:mm"/><br>
						Nº de Plazas: <fmt:formatNumber value="${lineaCarritoInfo.destinoInfo.numplazas}" type="currency"/><br>
						Precio: <span class="price"><fmt:formatNumber value="${lineaCarritoInfo.destinoInfo.precio}" type="currency"/></span><br>
						Cantidad: ${lineaCarritoInfo.cantidad}<br>
						Subtotal: <span class="subtotal"><fmt:formatNumber value="${lineaCarritoInfo.preciototal}" type="currency"/></span><br>
					
				</div>
				</li>
			</c:forEach>
			</ul>
			
			<div>
			
				</div>
		<form method="POST" action="${pageContext.request.contextPath}/confirmacionCarritoCompra">
		<!-- Edit Cart -->
			<a class="navi-item" href="${pageContext.request.contextPath}/carritoCompra">Edita el Carrito</a>&nbsp&nbsp
		<!-- Edit Customer Info -->
			<a class="navi-item" href="${pageContext.request.contextPath}/carritoCompraComprador">Edita Datos de Contacto</a>&nbsp&nbsp
		<!-- Send/Save -->
			<input type="submit" value="Comprar" class="button-send-sc special" />
		</form>
<!-- 		<div class="container"> -->
<!-- 			<a href="/SpringMVC_Viajes/.pdf">Descarga el PDF de tu factura</a> -->
<!-- 		</div> -->
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