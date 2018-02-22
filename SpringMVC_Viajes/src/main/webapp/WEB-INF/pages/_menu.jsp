<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   

 
	
		
		
<div class="header-container">

<!-- Header -->
					<header id="header" class="alt">
						<h1><a href="index.jsp">World Wide Travel</a></h1>
						<nav id="nav">
							<ul>
							<li>       <c:if test="${pageContext.request.userPrincipal.name != null}">
					        			
							   	      <li> <a href="${pageContext.request.contextPath}/cuentaInfo">${pageContext.request.userPrincipal.name} 
							              <li>   </a>
							         &nbsp;|&nbsp;
							          <li> <a href="${pageContext.request.contextPath}/cierreSesion">Cerrar Sesion</a>
							 
							        </c:if>
							        <c:if test="${pageContext.request.userPrincipal.name == null}">
							         <li>   <a href="${pageContext.request.contextPath}/registro">Acceder</a>
							        </c:if>
							
								<li class="special">
								
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											
											<li>
											<a href="${pageContext.request.contextPath}/listaDestino">Lista de Destinos</a>
										     
										   
											</li>
											<li>
											<a href="${pageContext.request.contextPath}/carritoCompra">Mis Viajes</a>
											</li>
											<li>
											
										   <security:authorize  access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
										     <a href="${pageContext.request.contextPath}/listaCompra">Editar Destinos</a>
										       </security:authorize>
											</li>
											<li>
										<security:authorize  access="hasRole('ROLE_MANAGER')">
									         <a href="${pageContext.request.contextPath}/destino">Crear Destino</a>
									         
									   </security:authorize>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
	</div>