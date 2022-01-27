package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book html_css = new Book("10050", "HTML5+CSS3", 15000);
		html_css.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로만 읽어도 어떻게 작동하는지 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다...");
		html_css.setCategory("Hello Coding");
		html_css.setAuthor("황재호");
		html_css.setPublisher("한빛미디어");
		html_css.setUnitInStock(100);
		html_css.setTotalPages(288);
		html_css.setReleaseDate("2018-03-02");
		html_css.setCondition("old");
		html_css.setFilename("10050.png");
		
		Book java = new Book("4514", "쉽게 배우는 자바 프로그래밍", 27000);
		java.setDescription("이 책은 객체 지향의 핵심을 다루면서도 자바 8 이후 도입된 새로운 기능을 상세히 설명합니다. 군더더기 없는 핵심 코드를 읽고 따라 하면서 ‘개념 이해와 실제 구현’을 할 수 있고, 실생활에 적용할 수 있는 프로젝트 문제를 풀면서 프로그래밍 실력도 끌어올릴 수 있습니다.");
		java.setCategory("IT 모바일");
		java.setAuthor("우종정");
		java.setPublisher("한빛미디어");
		java.setUnitInStock(150);
		java.setTotalPages(780);
		java.setReleaseDate("2020-11-22");
		java.setCondition("new");
		java.setFilename("4514.png");
		
		Book spring4 = new Book("10021", "스프링4 입문", 27000);
		spring4.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 이 책에서는 웹 애플리케이션의 기초를 다지고 스프링 코어를 살펴보며 클라우드 네이티브 입문까지 다룹니다...");
		spring4.setCategory("IT 모바일");
		spring4.setAuthor("하세가와 유이치 , 오오노 와타루 , 토키 코헤이(권은철 , 전민수)");
		spring4.setPublisher("한빛미디어");
		spring4.setUnitInStock(300);
		spring4.setTotalPages(520);
		spring4.setReleaseDate("2017-11-01");
		spring4.setCondition("old");	
		spring4.setFilename("10021.png");
		
		listOfBooks.add(html_css);
		listOfBooks.add(java);
		listOfBooks.add(spring4);
	}
	
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for(int i=0;i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			
			if(book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
	
