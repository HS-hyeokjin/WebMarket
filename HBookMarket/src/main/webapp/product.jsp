<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">도서 정보</h1>
        </div>
    </div>
    <%
        String id=request.getParameter("id");
		BookRepository dao= BookRepository.getInstance();
    	Book book = dao.getBookById(id);
    %>
    <div class="container">
        <div class="row">
        <div class="col-md-5">
  			<img src="c:/upload/<%=book.getFilename()%>" style= "width: 80%">      <%--이미지 포함 --%>
        		</div>
            <div class="col-md-6">
                <h3><%=book.getName()%></h3>
                <p><%=book.getDescription()%>
                <p><b>도서 코드:</b><span class="badge badge-danger">
                
                <%=book.getBookId() %></span>
                <p><b>저자</b> : <%=book.getAuthor() %>
                <p><b>출판사</b> : <%=book.getPublisher()%>
                <p><b>출판일</b> : <%=book.getReleaseDate() %>
                <p><b>총 페이지수</b> : <%=book.getPages() %>
                <p><b>재고수</b> : <%=book.getStock() %>
                <h4><%=book.getprice()%>원</h4>
                <p> <a href="#" class="btn btn-info"> 도서 주문&raquo</a>
                 <a href="./products.jsp" class="btn btn-secondary">도서 목록 &raquo</a>
            </div>
                        
        </div> 
        <hr>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
</body>
</html>