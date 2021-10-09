<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<!DOCTYPE html>

<%
	request.setCharacterEncoding("utf-8");
	
	String bookId=request.getParameter("BookId");
	String name=request.getParameter("name");
	String unitPrice=request.getParameter("unitPrice");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String releaseDate=request.getParameter("releaseDate");
	String totalPages=request.getParameter("totalPages");
	String description=request.getParameter("description");
	String category=request.getParameter("category");
	String unitsInStock=request.getParameter("unitsInStock");
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
	
	Book newBook=new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setprice(price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setPages(pages);
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setStock(stock);
	newBook.setCondition(condition);
	
	dao.addBook(newBook);
	
	response.sendRedirect("products.jsp");  
	%>
