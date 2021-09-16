package dao;


import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); //상품목록 저장
		
	public ProductRepository() {
		
		Product phone = new Product("P1234","iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitPrice(1000);
		phone.setCondition("New");
	
		Product notebook = new Product("P1235","LG PC 그램", 1500000);
		notebook.setDescription("13-inch, 1334X643 ips HD display, 60xel iSCamera");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitPrice(1000);
		notebook.setCondition("Refurubished");
	
		Product tablet = new Product("P1235","Galaxy Tab s", 900000);
		tablet.setDescription("212.8*125.6.6mm, Super amoled dsplay, Octa");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitPrice(1000);
		notebook.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
	return listOfProducts;
	}
	
}
