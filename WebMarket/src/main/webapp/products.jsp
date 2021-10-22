<!DOCTYPE html>  <!-- 상품 목록 출력 페이지-->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>   
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />           <!-- 부트스트랩 포함 -->
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
  		<div class="container">
 			<h1 class = "display-3">상품 목록</h1>
 		</div>
 	</div>
 	<!--기존에 작서된 useBean 삭제/ProductRepository 클래스의 객체 변수 instance를 호출하는 getInstance()메소드 작성, 이를 통행 getAllProducts()메소드를 호출하여 반한결과값을 ListOfProducts에 저장-->
 	<% 
    	ProductRepository dao = ProductRepository.getInstance();        
    	ArrayList<Product> listOfProducts = dao.getAllProducts();        
    %>
  		<div class="container">
  		<div class="row" align="center">
  		<%
  			for (int i = 0; i < listOfProducts.size(); i++){
  				Product product = listOfProducts.get(i);
  		%>
  		<div class="col-md-4">
  		<img src="c:/upload/<%=product.getFilename()%>" style="width: 100%">      <%--이미지 포함 --%>
  		<h3><%=product.getPname() %></h3>
  		<p><%=product.getDescription()%>
  		<p><%=product.getUnitPrice() %>원
  		<p><a href="./product.jsp?id=<%=product.getProductId()%>" %>    <%-- 상품 상세정보 버튼 --%>
  		<class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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