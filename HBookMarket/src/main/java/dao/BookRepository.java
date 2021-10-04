package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
    
	ArrayList<Book>listOfBooks=new ArrayList<Book>();
    
    public BookRepository(){
        
        Book b1=new Book("Num1","HTML5+CSS",15000);
        b1.setDescription("워드나 PPT문서를 만들수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지에 도전하세요.");
        b1.setCategory("Hello Coding");
        b1.setPublisher("한빛미디어");
        b1.setAuthor("황재호");
        b1.setPages(268);
        b1.setStock(1500);
        b1.setReleaseDate("2018/03/07");
        
        Book b2=new Book("Num2","쉽게 배우는 자바 프로그래밍",27000);
        b2.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 다루면서 초보자가 쉽게 학습할 수 있습니다.");
        b2.setCategory("IT모바일");
        b2.setPublisher("한빛아카데미");
        b2.setAuthor("우종중");
        b2.setPages(308);
        b2.setStock(2000);
        b2.setReleaseDate("2016/09/01");
        
        Book b3=new Book("Num3","스프링4 입문",27000);
        b3.setDescription("스프링은 단순히 사용 방법만 익히는것보다 아키텍쳐를 이해하는게 중요합니다!");
        b3.setCategory("IT모바일");
        b3.setPublisher("한빛미디어");
        b3.setAuthor("하세가와 유이치,오오노 와타루,토키 코헤이(권은철,전민수)");
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