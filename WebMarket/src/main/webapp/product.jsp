 <%-- 상품상세 정보 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>  
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품 정보</h1>
        </div>
    </div>
    <%
        String id=request.getParameter("id");             //상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 객체의 getParameter()메소드 사용           
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);        
		//useBean 태그에 id 속성 값을 통해 ProductRepository 클래스의 getProductById()메소드를 호출하여 반환된 결과값을 Product 객체 타입의 변수 product 에 저장
    %>

    <div class="container">
        <div class="row">
        	<div class="col-md-5">
  			<img src="c:/upload/<%=product.getFilename()%>" style= "width: 100%">      <%--이미지 포함 --%>
        		style="width: 100%" >
        		</div>
            <div class="col-md-6">
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><b>상품 코드:</b><span class="badge badge-danger">
                
                <%=product.getProductId() %></span>
                <p><b>제조사</b> : <%=product.getManufacturer()%>
                <p><b>분류</b> : <%=product.getCategory() %>
                <p><b>재고 수</b> : <%=product.getUnitsInStock() %>
                <h4><%=product.getUnitPrice()%>원</h4>
                <p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
                 <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
            </div>
        </div> 
        <hr>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
</body>
</html>