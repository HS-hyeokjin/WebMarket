<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="EUC-KR"%>
<%@ page import= "java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>welcome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<%! 
	String greeting = "Web Market";
	String tagline = "Welcome to Web Market!"; 
	%>
	<div class="jumbotron">
  		<div class="container">
 			<h1 class = "display-3">
 			<%= greeting %>
 			</h1>
 		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3>
					<%= tagline %>
			</h3>
			<%
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("현재 접속 시각: " + CT + "\n");
			%>
			</div>
		<hr>
	</div>
	
	<%@ include file = "footer.jsp" %>

</body>
</html>