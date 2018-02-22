<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shopping Cart Finalize</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body style="text-align: center;">
		<jsp:include page="_encabezado.jsp"/>
		<jsp:include page="_menu.jsp"/>
		
		<div class="container">
			<h3>Gracias por su compra</h3>
			Tu numero de compra es: ${ultimaCompraCarrito.numcompra}
		</div>
<!-- 		<div class="container"> -->
<!-- 			<a href="/SpringMVC_Viajes/.pdf">Descarga el PDF de tu factura</a> -->
<!-- 		</div> -->
		
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