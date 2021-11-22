<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<jsp:useBean id="BookDAO" class="dao.BookRepository" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css"/>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>

<body>

	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<% 	String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book Book = dao.getBookById(id);
	%>
	
	<div class="container">
	<div class="row">
	<div>
		<img src="C:\\Users\\지형\\eclipse-workspace\\Dynamic Web Project\\WebContent\\resources\\images\\<%=Book.getFilename()%>" style="width:20%">
	</div>
		<div class="col-md-12">
			<h3><%=Book.getName()%></h3>
			<p><%=Book.getDescription() %>
			<p><b>도서 코드 : </b><span class="badge badge-danger"></span>
				<%=Book.getBookId() %>
			<p><b>출판사</b> : <%=Book.getPublisher() %>
			<p><b>저자 </b> : <%=Book.getAuthor() %>			
			<p><b>재고 수</b> : <%=Book.getStock() %>
			<p><b>총 페이지 수</b> : <%=Book.getPages() %>
			<p><b>출판일</b> : <%=Book.getReleaseDate() %>
			<h4><%=Book.getPrice() %></h4>
			<p>
			<form name="addForm" action="./addCart.jsp?id=<%=Book.getBookId() %>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()">상품주문&raquo;</a>
				<a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
				<a href="./Books.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
			</form>
		</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>

</body>
</html>