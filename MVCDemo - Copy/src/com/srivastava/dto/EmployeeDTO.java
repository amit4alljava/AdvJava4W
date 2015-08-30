package com.srivastava.dto;

public class EmployeeDTO {
	
	@Override
	public String toString() {
		return "EmployeeDTO [empno=" + empno + ", name=" + name + ", salary="
				+ salary + "]";
	}
	private int empno;
	private String name;
	private double salary;
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	

}
