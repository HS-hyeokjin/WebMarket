<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>			
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>

<%	
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = "C:\\upload"; 			
int maxSize = 5 * 1024 * 1024; 					
String encType = "utf-8"; 					

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());  

	
	String bookId=multi.getParameter("BookId");
	String name=multi.getParameter("name");
	String unitPrice=multi.getParameter("unitPrice");
	String author=multi.getParameter("author");
	String publisher=multi.getParameter("publisher");
	String releaseDate=multi.getParameter("releaseDate");
	String totalPages=multi.getParameter("totalPages");
	String description=multi.getParameter("description");
	String category=multi.getParameter("category");
	String unitsInStock=multi.getParameter("unitsInStock");
	String condition=multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	
	else price=Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock=0;
	
	else stock=Long.valueOf(unitsInStock);
	
	long pages;
	
	if(totalPages.isEmpty())
		pages = 0;
	
	else pages=Long.valueOf(totalPages);
	
	Enumeration files = multi.getFileNames();			//파일 받도록 getFileNames() 메소드 작성
	String fname = (String)files.nextElement();			
	String fileName = multi.getFilesystemName(fname);
	
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
	newBook.setFilename(fileName);
	
	
	dao.addBook(newBook);
	
	response.sendRedirect("products.jsp");  
	%>
