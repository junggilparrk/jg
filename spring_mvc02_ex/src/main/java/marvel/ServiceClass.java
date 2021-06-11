package marvel;

import java.util.List;

public class ServiceClass {
	private int currentPage;
	private int totPage;
	private int firstPage;
	private int lastPage;
	private List<Marvel> marvelList;
	private int countPerPage;
	private int totCount;
	private int firstRow;
	
	public ServiceClass(int currentPage, 
			int countPerPage, int totCount) {
		super();
		this.currentPage = currentPage;
		this.countPerPage = countPerPage;
		this.totCount = totCount;
		totPage=(int)Math.ceil((double)totCount/countPerPage);
		firstPage=currentPage;
		lastPage=firstPage+3;
		if(lastPage>=totPage) {
			lastPage=totPage;
		}
		firstRow=(currentPage-1)*countPerPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public void setMarvelList(List<Marvel> marvelList) {
		this.marvelList = marvelList;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public void setTotCount(int totCount) {
		this.totCount = totCount;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public ServiceClass() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getCurrentPage() {
		return currentPage;
	}
	public int getTotPage() {
		return totPage;
	}
	public int getFirstPage() {
		return firstPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public List<Marvel> getMarvelList() {
		return marvelList;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public int getTotCount() {
		return totCount;
	}
	
	
}
