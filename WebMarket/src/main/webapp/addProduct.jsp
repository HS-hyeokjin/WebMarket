<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록</title>
<style>
.inputRow {
	margin: 15px 0px;
	display: flex;
	align-items : center;
}

.inputRow label {
	width : 150px;
}

.inputRow input, .inputRow textarea {
	font-size: 1.3rem;
}
.inputRow input.btn {
	font-size: 1rem;
	padding : 5px 15px;
}
</style>
<script type="text/javascript" src="./resources/js/validate.js">
</script>
</head>
<body>
	<fmt:setLocale value="<%=request.getParameter("language") %>"/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />

	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>상품 등록</h1>
			</div>
		</div>

		<div class="content">
			<div class="container">
				<div class="text-right">
					<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
				</div>
				<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
				<form name="newProduct" action="./processAddProduct.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="inputRow">
						<label for="productId"><fmt:message key="productId" /> </label> <input type="text"
							name="productId" id="productId">
					</div>
					<div class="inputRow">
						<label for="name"><fmt:message key="pname" /></label> <input type="text" name="name" id ="name">
					</div>
					<div class="inputRow">
						<label for="unitPrice"><fmt:message key="unitPrice" /></label> <input type="text" name="unitPrice" id="unitPrice">
					</div>
					<div class="inputRow">
						<label for="description"><fmt:message key="description" /></label>
						<textarea name="description" cols="50" rows="2" id="description">
							</textarea>
					</div>
					<div class="inputRow">
						<label for="manufacturer"><fmt:message key="manufacturer" /></label> <input type="text" name="manufacturer" id="manufacturer">
					</div>
					<div class="inputRow">
						<label for="category"><fmt:message key="category" /></label> <input type="text" name="category" id="category">
					</div>
					<div class="inputRow">
						<label for="unitStock"><fmt:message key="unitsInStock" /></label> <input type="text" name="unitInStock" id="unitStock">
					</div>
					<div class="inputRow">
						<label><fmt:message key="condition" /></label> 
						<label><input type="radio" name="condition" value="New"> <fmt:message key="condition_New" /></label> 
						<label><input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old" /></label>
						<label><input type="radio" name="condition" value="Refurbished"> <fmt:message key="condition_Refurbished" /></label>
					</div>
					<div class="inputRow">
						<label for="productImage"><fmt:message key="productImage" /></label>
						<input type="file" name="productImage" id="productImage">
					</div>
					<div class="inputRow">
						<input type="button" value="<fmt:message key="button" />" class="btn btn-secondary" onclick="CheckAddProduct()">
					</div>
				</form>
				<hr>
			</div>
		</div>
	</div>
	</fmt:bundle>
	<jsp:include page="footer.jsp" />
</body>
</html>