<%-- 신규상품 등록 페이지 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");

	Integer price;
	
	if (unitPrice.isEmpty())     	//폼페이지에 상품이 입력되지 않은 경우 0 으로 입력된 경우 정수형으로 변환
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;

	if (unitsInStock.isEmpty())		//폼페이지에 재고수가 입력되지 않은 경우 0 으로 입력된 경우 정수형으로 변환
		stock = 0;
	else stock = Long.valueOf(unitsInStock);
	
	ProductRepository dao = ProductRepository.getInstance();        //폼페이지에서 입력된 데이터를 저장하도록 addProduct() 메소드 호출
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(category);
	newProduct.setCategory(category);
	newProduct.setCondition(condition);

	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");             //페이지 강제 이동
%>