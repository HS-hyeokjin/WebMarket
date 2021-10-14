<%-- �űԻ�ǰ ��� ������ --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.*" %>                    	<%-- MultipartRequest Ŭ���� ��� --%>
<%@ page import="com.oreilly.servlet.multipart.*" %>			<%-- DefaultFileRenamePolicy Ŭ���� ��� --%>
<%@ page import="java.util.*" %>			
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = "C:\\upload"; 			// �� ���ø����̼ǻ��� ���� ���
	int maxSize = 5*1024*1024; 					// �ִ� ���ε�� ������ ũ�� 5MB	
	String encType = "utf-8"; 					// ���ڵ� ����

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());  //MultipartRequest ��ü�� �����ϵ��� ������ �ۼ�

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

	Integer price;
	
	if (unitPrice.isEmpty())     	//���������� ��ǰ�� �Էµ��� ���� ��� 0 ���� �Էµ� ��� ���������� ��ȯ
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;

	if (unitsInStock.isEmpty())		//���������� ������ �Էµ��� ���� ��� 0 ���� �Էµ� ��� ���������� ��ȯ
		stock = 0;
	else stock = Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();			//���� �޵��� getFileNames() �޼ҵ� �ۼ�
	String fname = (String)files.nextElement();			
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();        //������������ �Էµ� �����͸� �����ϵ��� addProduct() �޼ҵ� ȣ��
	
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
	
	response.sendRedirect("products.jsp");             //������ ���� �̵�
%>