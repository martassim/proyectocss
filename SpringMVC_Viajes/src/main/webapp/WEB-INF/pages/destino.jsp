<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body style="text-align: center;">
		<jsp:include page="_encabezado.jsp" />
		<jsp:include page="_menu.jsp" />
				
    <div id="page-wrapper">
   <article id="main">
			<section class="wrapper style5">
					<div class="inner">
		
		<c:if test="${not empty errorMessage}">
			<div class="error-message">${errorMessage}</div>
			
		</c:if>
		<form:form modelAttribute="destinoForm" method="POST" enctype="multipart/form-data">
		
			<div class="row uniform">
		         <div class="2u 2u$(xsmall)">		
						</div>
						<div class="10u 10u$(xsmall)">				
		         <h3>Producto</h3>
		         	</div>
		           		<div class="2u 2u$(xsmall)">						
						</div>
						<div class="2u 2u$(xsmall) style="color:red;">
					Id: </div>
					<div class="5u$ 5u$(xsmall)">
						<c:if test="${not empty destinoForm.iddestino}">
							<form:hidden path="iddestino"/>${destinoForm.iddestino}
						</c:if>
						<c:if test="${empty destinoForm.iddestino}">
							<form:input path="iddestino"/>
							<form:hidden path="newDestino"/>
						</c:if>
					
					
					<form:errors path="iddestino" class="error-message" /></div>
				<div class="2u 2u$(xsmall)">						
						</div>
						<div class="2u 2u$(xsmall)">
					Nombre: </div>
					 <div class="5u$ 5u$(xsmall)">
					<form:input path="nombre"/></div>
					<div class="2u 2u$(xsmall)">
					<form:errors path="nombre" class="error-message" /></div>
				 <div class="2u 2u$(xsmall)">
<!-- 				<tr> -->
<!-- 					Fecha: </div> -->
<%-- 					<form:input path="fecha" /></div> --%>
<%-- 					<form:errors path="fecha" class="error-message" /></div> --%>
<!-- 				</tr> -->
				
					Descripcion corta: </div>
					 <div class="5u$ 5u$(xsmall)">
					<form:input path="descripcioncorta" /></div>
					 <div class="2u 2u$(xsmall)">
					<form:errors path="descripcioncorta" class="error-message" /></div>
				 <div class="2u 2u$(xsmall)">
					Nº de plazas: </div>
					 <div class="5u$ 5u$(xsmall)">
					<form:input path="numplazas" /></div>
					<div class="2u 2u$(xsmall)">
					<form:errors path="numplazas" class="error-message" /></div>
				 <div class="2u 2u$(xsmall)">
					Precio: </div>
					 <div class="5u$ 5u$(xsmall)">
					<form:input path="precio" /></div>
					<div class="2u 2u$(xsmall)">
					<form:errors path="precio" class="error-message" /></div>
				 <div class="2u 2u$(xsmall)">
					Imagen: </div>
					<div class="5u$ 5u$(xsmall)">
					<img src="${pageContext.request.contextPath}/destinoImagen?iddestino=${destinoForm.iddestino}" width="100"/></div>
					 <div class="2u 2u$(xsmall)"> 	</div>
					 <div class="2u 2u$(xsmall)">  Upload Image </div>
					 
					
					<div class="5u$ 5u$(xsmall)">
					<form:input type="file" path="fileData"/></div>
					
					<div class="2u 2u$(xsmall)">
				
					&nbsp;</div>
					<div class="5u$ 5u$(xsmall)">
					<input type="submit" class="special" value="Añade" /> <input type="reset" value="Reinicia" /></div>
				</div>
		</form:form>
		</div>
		</section>
		</article>
		</div>
		
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