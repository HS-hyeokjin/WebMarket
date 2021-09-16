<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
  		<div class="container">
 			<h1 class = "display-3">상품 목록</h1>
 		</div>
 	</div>
 	<% 
 		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
 	%>
  		<div class="container">
  		<div class="row" align="center"></div>
  		<%
  			for (int i = 0; i < listOfProducts.size(); i++){
  				Product product = listOfProducts.get(i);
  		%>
  		<div class="col-md-4"></div>
  		<h3><%=product.getPname() %></h3>
  		<p><%=product.getDescription()%>
  		<p><%=product.getUnitPrice() %>원
  		</div>
  		<%
  		}
  		%>
  		</div>
  		<hr>
  		</div>
  		<jsp:include page="footer.jsp" />
  			
</body>
</html>