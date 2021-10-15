<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<jsp:useBean id="productDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>��ǰ �� ����</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">��ǰ ����</h1>
        </div>
    </div>
    <%
        String id=request.getParameter("id");
		BookRepository dao=BookRepository.getInstance();
    	Book book=productDAO.getBookById(id);
    %>
    <div class="container">
        <div class="row">
        <div class="col-md-5">
  			<img src="c:/upload/<%=book.getFilename()%>" style= "width: 20%">      <%--�̹��� ���� --%>
        		</div>
            <div class="col-md-6">
                <h3><%=book.getName()%></h3>
                <p><%=book.getDescription()%>
                <p><b>���� �ڵ�:</b><span class="badge badge-danger">
                
                <%=book.getBookId() %></span>
                <p><b>���ǻ�</b> : <%=book.getPublisher()%>
                <p><b>����</b> : <%=book.getAuthor() %>
                <p><b>����</b> : <%=book.getStock() %>
                <p><b>�� ��������</b> : <%=book.getPages() %>
                <p><b>������</b> : <%=book.getReleaseDate() %>
                <h4><%=book.getprice()%>��</h4>
                <p> <a href="#" class="btn btn-info"> ���� �ֹ�&raquo</a>
                 <a href="./products.jsp" class="btn btn-secondary">���� ��� &raquo</a>
            </div>
                        
        </div> 
        <hr>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
</body>
</html>