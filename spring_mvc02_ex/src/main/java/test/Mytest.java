package test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import marvel.Marvel;
import marvel.MarvelMapper;
import marvel.MarvelService;
import marvel.ServiceClass;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root_context.xml")
public class Mytest {
@Autowired
MarvelService ms;
	@Test
	public void test() {
		ServiceClass sc=ms.MarvelService(1);
		System.out.println(sc.getCountPerPage());
		for( Marvel m:sc.getMarvelList()) {
		System.out.println(m);
		}
		System.out.println(sc.getCurrentPage());
		System.out.println(sc.getFirstPage());
		System.out.println(sc.getFirstRow());
		System.out.println(sc.getLastPage());
		System.out.println(sc.getTotCount());
		System.out.println(sc.getTotPage());
		
	}
	
	}


