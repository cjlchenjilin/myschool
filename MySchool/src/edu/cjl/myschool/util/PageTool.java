package edu.cjl.myschool.util;

public class PageTool {
	private int size = 2;
	private int index = 1;
	private int rows;
	private int totalPage;
	
	
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getTotalPage() {
		totalPage = rows%size == 0 ? rows/size:rows/size+1; 
		return totalPage;
	}
}
