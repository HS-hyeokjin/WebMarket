package dto;

import java.io.Serializable;

 public class Book implements Serializable{
 
	private String bookId;			//���� id
    private String name;			//�����̸�
    private Integer price;			//����  ��üŸ��
    private String description;		//����
    private String author;			//����
    private String publisher;		//���ǻ�
    private String category;		//�з�
    private long pages;				//��������
    private	long Stock;				//����
    private String ReleaseDate;		//������
    private String condition; 		//�Ż�ǰ �߰�ǰ ���ǰ 

    
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