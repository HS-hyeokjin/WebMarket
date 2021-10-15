<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="utf-8">
<title>Book Market</title>
</head>

<body>
<%@ include file="menu.jsp" %>

<%!
String main = "µµ¼­ À¥ ¼îÇÎ¸ô";
String main_tagline = "Welcome to Book Market";
%>
<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3"><%=main %></h1>
	</div>
</div>

<main role="main">
<div class="contaimer">
	<div class="text-center">
		<h3><%=main_tagline %></h3>
		<%--<h3><%@ include file="date.jsp" %></h3>--%>
	</div>
</div>
<%@ include file="footer.jsp" %>
</main>

</body>
</html>