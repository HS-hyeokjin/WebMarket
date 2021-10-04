package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
    
	ArrayList<Book>listOfBooks=new ArrayList<Book>();
    
    public BookRepository(){
        
        Book b1=new Book("Num1","HTML5+CSS",15000);
        b1.setDescription("���峪 PPT������ ����� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� ���������� �����ϼ���.");
        b1.setCategory("Hello Coding");
        b1.setPublisher("�Ѻ��̵��");
        b1.setAuthor("Ȳ��ȣ");
        b1.setPages(268);
        b1.setStock(1500);
        b1.setReleaseDate("2018/03/07");
        
        Book b2=new Book("Num2","���� ���� �ڹ� ���α׷���",27000);
        b2.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� �ٷ�鼭 �ʺ��ڰ� ���� �н��� �� �ֽ��ϴ�.");
        b2.setCategory("IT�����");
        b2.setPublisher("�Ѻ���ī����");
        b2.setAuthor("������");
        b2.setPages(308);
        b2.setStock(2000);
        b2.setReleaseDate("2016/09/01");
        
        Book b3=new Book("Num3","������4 �Թ�",27000);
        b3.setDescription("�������� �ܼ��� ��� ����� �����°ͺ��� ��Ű���ĸ� �����ϴ°� �߿��մϴ�!");
        b3.setCategory("IT�����");
        b3.setPublisher("�Ѻ��̵��");
        b3.setAuthor("�ϼ����� ����ġ,������ ��Ÿ��,��Ű ������(����ö,���μ�)");
        b3.setPages(189);
        b3.setStock(3000);
        b3.setReleaseDate("2019/05/03");
        
        listOfBooks.add(b1);
        listOfBooks.add(b2);
        listOfBooks.add(b3);
    }
    public ArrayList<Book> getAllProducts(){
        return listOfBooks;
    }
    public Book getBookById(String BookId) {
    	Book bookById = null;
    	for (int i = 0; i<listOfBooks.size();i++) {
    		Book book = listOfBooks.get(i);
    		if(book != null && book.getBookId() != null && book.getBookId().equals(BookId)) {
    			bookById = book;
    			break;
    		}
    	}
    	return bookById;
    }
}