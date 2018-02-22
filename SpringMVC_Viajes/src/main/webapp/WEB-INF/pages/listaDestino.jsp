<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Destinos</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body>
		<jsp:include page="_encabezado.jsp"/>
		<jsp:include page="_menu.jsp"/>
		<fmt:setLocale value="en_US" scope="session"/>
		
		
   
   	<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>world wide travel</h2>
							<p>Viaja a todas partes desde Madrid<br>
							visita otras ciudades de España
							o el mundo entero<br>
							Sin preocupaciones, solo elige el destino
							<br> 
						</div>
						<a href="#one" class="more scrolly">Learn More</a>
					</section>
				
   <!-- Two -->
   
   <section id="one" class="wrapper alt style2">
		
		<c:forEach items="${paginationDestinos.list}" var="destInfo">
			<section class="spotlight">
				   <div class="image"><img class="product-image"
					img class="product-image" src="${pageContext.request.contextPath}/imagenDestino?iddestino=${destInfo.iddestino}" /></div>
					
					<div class="content">
					
					<h4>Nombre: ${destInfo.nombre}</h4><br>
					<p>
					Descripcion: ${destInfo.descripcioncorta}<br>
					Fecha: <fmt:formatDate value="${destInfo.fecha}" pattern="dd-MM-yyyy HH:mm"/><br>
					Nº de plazas: <fmt:formatNumber value="${destInfo.numplazas}"/><br>
					Precio: <fmt:formatNumber value="${destInfo.precio}" type="currency"/><br><p>
					<a href="${pageContext.request.contextPath}/compraDestino?iddestino=${destInfo.iddestino}" class="button special icon fa-shopping-cart">Comprar ahora</a><br>
				<!-- For Manager edit Product -->
					<security:authorize access="hasRole('MANAGER')">
						<a style="color: red;" href="${pageContext.request.contextPath}/destino?iddestino=${destInfo.iddestino}" >
				                     Editar</a><br>
					</security:authorize>
				</div>
			</section>
		</c:forEach>
		<c:if test="${paginationDestinos.totalPages > 1}">
			<div class="page-navigator">
				<c:forEach items="${paginationDestinos.navigationPages}" var = "page">
					<c:if test="${page != -1 }">
						<a href="listaDestino?page=${page}" class="nav-item">${page}</a>
					</c:if>
					<c:if test="${page == -1 }">
						<span class="nav-item"> ... </span>
					</c:if>
				</c:forEach> 
			</div>
		</c:if>
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