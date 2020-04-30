package com.example.employee.app.employee;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

public class EmployeeForm implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@NotNull
    private String empid;
	
	@NotNull
	private String name;
	
	@NotNull
	private String birthDate;
	
	@NotNull
	private String gender;
	
	@NotNull
	private String maritalStatus;
	
	@NotNull
	private String japanId;
	
	@NotNull
	private String departmentId;
	
	@NotNull
	private String joinDate;
	
	@NotNull
	private String position;
	
	@NotNull
	private String email;
	
	@NotNull
	private String phNo;

	private String searchCondition;

	

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getJapanId() {
		return japanId;
	}

	public void setJapanId(String japanId) {
		this.japanId = japanId;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhNo() {
		return phNo;
	}

	public void setPhNo(String phNo) {
		this.phNo = phNo;
	}
}
