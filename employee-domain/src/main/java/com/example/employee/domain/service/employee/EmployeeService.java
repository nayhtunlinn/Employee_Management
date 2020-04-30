package com.example.employee.domain.service.employee;

import java.util.Collection;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;

public interface EmployeeService {
	 
	void create(Employee employee);
	
	void update(Employee employee);

	void delete(String empId);
	
	Employee findById(String empId);
	
	Page<Employee> findAll(SearchData criteria, Pageable pageable);
}
