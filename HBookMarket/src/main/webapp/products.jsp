<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository"%>
<%@ page errorPage="exceptionNoPage.jsp" %>
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
        <div class="col" align="left">
            <%
            	for(int i=0;i<listOfBooks.size(); i++){
                Book book = listOfBooks.get(i);
            %>
            <div class="col-md-4">
              	<img src="c:/upload/<%=book.getFilename()%>" style= "width : 40%">      <%--이미지 포함 --%>
                <h3>[<%=book.getCategory() %>] <%=book.getName() %></h3><p>
                <p>
                <%=book.getDescription()%>
                <p><%=book.getAuthor() %>|<%=book.getPublisher() %>|<%=book.getprice() %>
                <p><a href="./product.jsp?id=<%=book.getBookId() %>"
                class="btn btn-secondary role="button">상세 정보</a>
            </div>
           
            <%} %>            
        </div> 
<%@ include file="footer.jsp" %>

</body>
</html>