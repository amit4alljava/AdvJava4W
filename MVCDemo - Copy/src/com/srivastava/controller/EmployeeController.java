package com.srivastava.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.srivastava.dto.EmployeeDTO;
import com.srivastava.model.EmployeeModel;

/**
 * Servlet implementation class EmployeeController
 */
@WebServlet("/empController")
public class EmployeeController extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int empno= Integer.parseInt(request.getParameter("empno"));
		EmployeeModel empModel = new EmployeeModel();
		try {
			ArrayList<EmployeeDTO> empList = empModel.getEmployeeByEmpno(empno);
			request.setAttribute("emp_list", empList);
			RequestDispatcher rd = request.getRequestDispatcher("EmpSearch.jsp");
			rd.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			response.sendRedirect("error.html");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
	}

}
