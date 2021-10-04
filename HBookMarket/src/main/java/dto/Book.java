package dto;

import java.io.Serializable;

 public class Book implements Serializable{
 
	private String bookId;			//도서 id
    private String name;			//도서이름
    private Integer price;			//가격  객체타입
    private String description;		//설명
    private String author;			//저자
    private String publisher;		//출판사
    private String category;		//분류
    private long pages;				//페이지수
    private	long Stock;				//재고수
    private String ReleaseDate;		//출판일
    private String condition; 		//신상품 중고품 재생품 

    
	public Book() {
		super();
	}
    public Book(String booktId, String name, Integer price) {
        this.bookId = booktId;
        this.name = name;
        this.price = price;
    }
	    
    public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public long getPages() {
		return pages;
	}

	public void setPages(long pages) {
		this.pages = pages;
	}

	public long getStock() {
		return Stock;
	}

	public void setStock(long stock) {
		Stock = stock;
	}

	public String getReleaseDate() {
		return ReleaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		ReleaseDate = releaseDate;
	}
 
    public String getBookId() {
        return bookId;
    }
    public void setBookId(String bookId) {
        this.bookId = bookId;
    }
    
    public String getAuthor() {
        return author;
    }
 
    public void setAuthor(String author) {
        this.author = author;
    }
 
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Integer getprice() {
        return price;
    }
    public void setprice(Integer price) {
        this.price = price;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }

    
}