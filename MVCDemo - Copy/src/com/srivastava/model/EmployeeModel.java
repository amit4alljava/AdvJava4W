package com.srivastava.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.srivastava.dto.EmployeeDTO;

public class EmployeeModel {
	
	private Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_eg_database","root","root");
		return con;
	}
	
	public ArrayList<EmployeeDTO> getEmployeeByEmpno(int empId) throws SQLException, ClassNotFoundException{
		ArrayList<EmployeeDTO> empList = new ArrayList<>();
		Connection con= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			con = this.getConnection();
			pstmt = con.prepareStatement("select empid,name,salary from emp where empid=?");
			pstmt.setInt(1,empId);
			rs = pstmt.executeQuery();
			while(rs.next()){
				EmployeeDTO empDTO = new EmployeeDTO();
				empDTO.setEmpno(rs.getInt("empid"));
				empDTO.setName(rs.getString("name"));
				empDTO.setSalary(rs.getDouble("salary"));
				empList.add(empDTO);
			}
			
		}
		finally{
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
				}
				if(con!=null){
				con.close();
				}
		}
		return empList;
		
		
	}

}
