<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page pageEncoding="UTF-8" %>
<title>Product List</title>
 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 

 
</head>
<body>
 
<%--    <jsp:include page="WEB-INF/pages/_header.jsp" /> --%>
   <jsp:include page="WEB-INF/pages/_menu.jsp" />
  
   <fmt:setLocale value="en_US" scope="session"/>
   
   
   
   	<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>Viajes Festival</h2>
							<p>No te pierdas ningún evento, viaja desde Madrid a toda España.<a href="http://html5up.net">esto es un  enlace</a>.</p>
							<ul class="actions">
								<li><a  href="${pageContext.request.contextPath}/">Indice</a>
											
							</ul>
						</div>
						<a href="#one" class="more scrolly">Learn More</a>
					</section>
				
   <!-- Two -->
   
   <section id="two" class="wrapper alt style2">
					
	
						<c:forEach items="${paginationProducts.list}" var="prodInfo">
										
						<section class="spotlight">
				           
				               <div class="image"><img class="product-image"
				                   src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}" /></div>
				                   <div class="content">
				                   
				               <h4>Code: ${prodInfo.code}<br/>
				                ${prodInfo.name}</h4>
				               <p>AQUI PONEMOS EL CAMPO CON LA DESCRIPCION REAL, HAY QUE AÑADIRLO A LA DB. Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
				               
				               <P>Price: <fmt:formatNumber value="${prodInfo.price}" type="currency"/></P>
				               <P><a
				                   href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}" class="button special icon fa-shopping-cart">
				                     Buy Now</a></P>
				                 
				                 
				                       
				               <!-- For Manager edit Product -->
				               <security:authorize  access="hasRole('ROLE_MANAGER')">
				                <a style="color:red;"
				                     href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
				                       Edit Product</a>
				               </security:authorize>
				           
				           
				      
				       	</section>
				  
				   </c:forEach>
 
  
						
						
					</section>
					
   
  
 
		<jsp:include page="WEB-INF/pages/_piePagina.jsp" /> 
   <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js">type="text/javascript"><jsp:text> </jsp:text></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js">type="text/javascript"><jsp:text> </jsp:text></script><![endif]-->
			<script src="${pageContext.request.contextPath}/assets/js/main.js">type="text/javascript"><jsp:text> </jsp:text></script>
 
 
</body>
</html>