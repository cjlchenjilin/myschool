package edu.cjl.myschool.entity;

public class Grade {
	private Integer id;
	private String name;
	
	public Grade(){}
	public Grade(String name){
		this.name = name;
	}
	public Grade(int id,String name){
		this.name = name;
		this.id = id;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
