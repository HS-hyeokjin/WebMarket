<%-- 신규상품 등록 페이지 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.*" %>                    	<%-- MultipartRequest 클래스 사용 --%>
<%@ page import="com.oreilly.servlet.multipart.*" %>			<%-- DefaultFileRenamePolicy 클래스 사용 --%>
<%@ page import="java.util.*" %>			
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = "C:\\upload"; 			// 웹 애플리케이션상의 절대 경로
	int maxSize = 5*1024*1024; 					// 최대 업로드될 파일의 크기 5MB	
	String encType = "utf-8"; 					// 인코딩 유형

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());  //MultipartRequest 객체를 생성하도록 생성자 작성

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

	Integer price;
	
	if (unitPrice.isEmpty())     	//폼페이지에 상품이 입력되지 않은 경우 0 으로 입력된 경우 정수형으로 변환
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;

	if (unitsInStock.isEmpty())		//폼페이지에 재고수가 입력되지 않은 경우 0 으로 입력된 경우 정수형으로 변환
		stock = 0;
	else stock = Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();			//파일 받도록 getFileNames() 메소드 작성
	String fname = (String)files.nextElement();			
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();        //폼페이지에서 입력된 데이터를 저장하도록 addProduct() 메소드 호출
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(category);
	newProduct.setCategory(category);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");             //페이지 강제 이동
%>