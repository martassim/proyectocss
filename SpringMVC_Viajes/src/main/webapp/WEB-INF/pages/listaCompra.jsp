<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product List</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body style="text-align: center;">
		<jsp:include page="_encabezado.jsp" />
		<jsp:include page="_menu.jsp" />
		<fmt:setLocale value="en_US" scope="session"/>
		
		
     <article id="main">
			<section class="wrapper style2">
					<div class="inner wrapper style5">
		
		<h4 class="page-title">Lista de la Compra</h4>
		<h4>Total de pedidos: ${paginationResult.totalRecords}</h4>
		
   			<table border="1" style="width:100%"align="center"; >
			<tr>
			<th></th>
				<th>Nº de Compra</th>
				<th>Fecha de Compra</th>
				<th>Nombre del Comprador</th>
				<th>Direccion del Comprador</th>
				<th>Mail del Comprador</th>
				<th>Telefono del Comprador</th>
				<th>Precio Total</th>
				<th>Vista</th>
				<th></th>
			</tr>
			<c:forEach items="${paginationResult.list}" var="compraInfo">
				<tr>
				<td></td>
					<td>${compraInfo.numcompra}"</td>
					<td><fmt:formatDate value="${compraInfo.fechacompra}" pattern="dd-MM-yyyy HH:mm"/></td>
					<td>${compraInfo.nombrecomprador}</td>
					<td>${compraInfo.direccioncomprador}</td>
					<td>${compraInfo.mailcomprador}</td>
					<td>${compraInfo.telefonocomprador}</td>
					<td style="color:red;"><fmt:formatNumber value="${compraInfo.preciototal}" type="currency"/></td>
					<td><a href="${pageContext.request.contextPath}/compra?idcompra=${compra.idcompra}">Vista</a></td>
				<td></td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${paginationResult.totalPages > 1}">
			<div class="page-navigator">
				<c:forEach items="${paginationResult.navigationPages}" var = "page">
					<c:if test="${page != -1 }">
						<a href="listaCompra?page=${page}" class="nav-item">${page}</a>
					</c:if>
					<c:if test="${page == -1 }">
						<span class="nav-item"> ... </span>
					</c:if>
				</c:forEach>
			</div>
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