<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String bookId=request.getParameter("BookId");
	String name=request.getParameter("name");
	String unitPrice=request.getParameter("price");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String releaseDate=request.getParameter("releaseDate");
	String totalPages=request.getParameter("Pages");
	String description=request.getParameter("description");
	String category=request.getParameter("category");
	String unitsInStock=request.getParameter("Stock");
	String condition=request.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	else price=Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock=0;
	else stock=Long.valueOf(unitsInStock);
	
	long pages;
	if(unitsInStock.isEmpty())
		pages=0;
	else pages=Long.valueOf(totalPages);
	
	
	BookRepository dao=BookRepository.getInstance();
	
	Book newProduct=new Book();
	newProduct.setBookId(bookId);
	newProduct.setName(name);
	newProduct.setprice(price);
	newProduct.setAuthor(author);
	newProduct.setPublisher(publisher);
	newProduct.setReleaseDate(releaseDate);
	newProduct.setPages(pages);
	newProduct.setDescription(description);
	newProduct.setCategory(category);
	newProduct.setStock(stock);
	newProduct.setCondition(condition);
	dao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
	
%>
</body>
</html>