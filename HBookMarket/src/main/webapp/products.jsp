<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@page import="dao.BookRepository"%>
<jsp:useBean id="BookDAO" class="dao.BookRepository" scope="session"/>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
        <div class="col" align="left">
            <%for(int i=0;i<listOfBooks.size();i++){
                Book book=listOfBooks.get(i);
            %>
            <div class="col-lg">
                <h4>[<%=book.getCategory() %>] <%=book.getName() %></h4><p>
                <p><%=book.getDescription()%>
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