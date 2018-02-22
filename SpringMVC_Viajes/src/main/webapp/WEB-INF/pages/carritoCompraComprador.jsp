<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Enter Customer Information</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main.css"> 
	</head>
	<body style="text-align: center;">
		<jsp:include page="_encabezado.jsp" />
		<jsp:include page="_menu.jsp" />
		
		 <div id="page-wrapper">
  				 <article id="main">
						<section class="wrapper style5">
							<div class="inner">
		<form:form method="POST" modelAttribute="compradorForm" action="${pageContext.request.contextPath}/carritoCompraComprador">
			<div class="row uniform">
		         
		         <div class="2u 2u$(xsmall)">						
						</div>
						<div class="2u 2u$(xsmall)">
               Name *
                </div>
                
              <div class="5u$ 5u$(xsmall)">
                <form:input path="nombrecomprador"/>
					<form:errors path="nombrecomprador" class="error-message"/>
 </div>
            <div class="2u 2u$(xsmall)">					
						</div>
						
		              	<div class="2u 2u$(xsmall)">
                Email *
                </div>
                
                <div class="5u$ 5u$(xsmall)">
                <form:input path="mailcomprador" />
					<form:errors path="mailcomprador" class="error-message"/>
            </div>
 						<div class="2u 2u$(xsmall)">						
						</div>
		              	<div class="2u 2u$(xsmall)">
            
                Phone *</div>
                
                <div class="5u$ 5u$(xsmall)">
                	<form:input path="telefonocomprador" />
					<form:errors path="telefonocomprador" class="error-message"/>
                </div>
            			<div class="2u 2u$(xsmall)">
						</div>
		              	<div class="2u 2u$(xsmall)">
 
            
                Address *</div>
                <div class="5u$ 5u$(xsmall)">
               <form:input path="direccioncomprador"/>
					<form:errors path="direccioncomprador" class="error-message"/>
            		</div>
 						<div class="2u 2u$(xsmall)">
												
						</div>
						
		              	<div class="2u 2u$(xsmall)">
            
                &nbsp;</div>
                <div class="4u$ 4u$(xsmall)">
                <input type="submit" value="Submit" class="special"/> <input type="reset" value="Reset" /></div>
                  
                   </div>
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