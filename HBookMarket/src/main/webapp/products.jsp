<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@page import="dao.BookRepository"%>
<jsp:useBean id="BookDAO" class="dao.BookRepository" scope="session"/>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<head>
<title>도서 목록</title>
</head>    
<body>

<%@ include file="menu.jsp" %>

<%! String greeting="도서 목록";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
        <%=greeting %>
        </h1>
    </div>
</div>
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllProducts();
	%>
        <style> img{float : left}</style>
        <div class="col" align="left">
            <%for(int i=0;i<listOfBooks.size();i++){
                Book book=listOfBooks.get(i);
            %>
            <div class="col-md-4">
              	<img src="c:/upload/<%=book.getFilename()%>" style= "width : 40%">      <%--이미지 포함 --%>
                <h3>[<%=book.getCategory() %>] <%=book.getName() %></h3><p>
                <p>
                <%=book.getDescription()%>
                <a href="./product.jsp?id=<%=book.getBookId() %>"
                class="btn btn-secondary rold="button">상세 정보 &raquo</a>
                <p><%=book.getAuthor() %>|<%=book.getPublisher() %>|<%=book.getprice() %>
            </div>
            <hr>
            <%} %>            
        </div> 
<%@ include file="footer.jsp" %>

</body>
</html>