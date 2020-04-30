package com.example.employee.app.employee;

import java.time.LocalDate;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {

	@Inject
	EmployeeService empservice;

	@Inject
	Mapper beanMapper;

	@ModelAttribute
	public EmployeeForm setUpForm() {
		return new EmployeeForm();
	}

	@RequestMapping(value = "create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createForm() {
		return "employee/newem";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST, params = "redo")
	public String createRedo(EmployeeForm form) {
		form = formValueToNum(form);
		return "employee/newem";
	}

	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String createConfirm(@Validated EmployeeForm form, BindingResult result) {
		if (result.hasErrors()) {
			return "employee/newem";
		}
		form = formNumToValue(form);
		return "employee/confirm";
	}

	@RequestMapping(value = "updateconfirm", method = RequestMethod.POST)
	public String updateConfirm(@Validated EmployeeForm form, BindingResult result) {
		if (result.hasErrors()) {
			return "employee/edit";
		}
		form = formNumToValue(form);
		return "employee/upconfirm";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST, params = "redo")
	public String UpdateRedo(EmployeeForm form, BindingResult result, Model model) {
		form = formValueToNum(form);
		return "employee/edit";
	}

	@RequestMapping(value = "up", method = RequestMethod.POST)
	public String up(@Validated EmployeeForm form, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return UpdateRedo(form, result, model);
		}
		Employee employee = beanMapper.map(form, Employee.class);
		employee = objValueToNum(employee);
		employee.setBirthDate(isValid(form.getBirthDate()));
		employee.setJoinDate(isValid(form.getJoinDate()));
		empservice.update(employee);

		return "redirect:/employee/newem?complete";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String create(@Validated EmployeeForm form, BindingResult result) {
		if (result.hasErrors()) {
			return createRedo(form);
		}
		Employee employee = beanMapper.map(form, Employee.class);
		employee = objValueToNum(employee);
		employee.setBirthDate(isValid(form.getBirthDate()));
		employee.setJoinDate(isValid(form.getJoinDate()));

		empservice.create(employee);

		return "redirect:/employee/newem?complete";
	}

	@RequestMapping(value = "newem", method = RequestMethod.GET, params = "complete")
	public String createComplete() {
		return "employee/comp";
	}

	@RequestMapping(value = "delete", params = "empid")
	public String delete(@RequestParam("empid") String empID, Model model) {
		empservice.delete(empID);
		return "redirect:/management";

	}

	@RequestMapping(value = "edit", params = "empid")
	public String edit(@RequestParam("empid") String empID, Model model, EmployeeForm form) {
		Employee emp = empservice.findById(empID);
		form = objToForm(emp, form);
		model.addAttribute(form);
		return "employee/edit";
	}

	@RequestMapping(value = "detail", params = "empid")
	public String deatil(@RequestParam("empid") String empID, Model model, EmployeeForm form) {
		Employee emp = empservice.findById(empID);
		form = objToFormValue(emp, form);
		model.addAttribute(form);
		return "employee/detail";
	}

	private String isValid(String date) {
		String dt;
		try {
			dt = LocalDate.parse(date).toString();
		} catch (Exception e) {
			dt = LocalDate.now().toString();
		}
		return dt;
	}

	private EmployeeForm formNumToValue(EmployeeForm form) {
		switch (form.getDepartmentId()) {
		case "1":
			form.setDepartmentId("Dev-1");
			break;
		case "2":
			form.setDepartmentId("Dev-2");
			break;
		case "3":
			form.setDepartmentId("Dev-3");
			break;
		}

		switch (form.getPosition()) {
		case "1":
			form.setPosition("JSE");
			break;
		case "2":
			form.setPosition("SE");
			break;
		case "3":
			form.setPosition("SSE");
			break;
		case "4":
			form.setPosition("TL");
			break;
		case "5":
			form.setPosition("PL");
			break;
		case "6":
			form.setPosition("PM");
			break;
		case "7":
			form.setPosition("Junior HR");
			break;
		case "8":
			form.setPosition("Senior HR");
			break;
		}
		switch (form.getJapanId()) {
		case "1":
			form.setJapanId("Beginner");
			break;
		case "2":
			form.setJapanId("N5");
			break;
		case "3":
			form.setJapanId("N4");
			break;
		case "4":
			form.setJapanId("N3");
			break;
		case "5":
			form.setJapanId("N2");
			break;
		case "6":
			form.setJapanId("N1");
			break;
		}
		return form;
	}

	private EmployeeForm formValueToNum(EmployeeForm form) {
		switch (form.getDepartmentId()) {
		case "Dev-1":
			form.setDepartmentId("1");
			break;
		case "Dev-2":
			form.setDepartmentId("2");
			break;
		case "Dev-3":
			form.setDepartmentId("3");
			break;
		}
		switch (form.getPosition()) {
		case "JSE":
			form.setPosition("1");
			break;
		case "SE":
			form.setPosition("2");
			break;
		case "SSE":
			form.setPosition("3");
			break;
		case "TL":
			form.setPosition("4");
			break;
		case "PL":
			form.setPosition("5");
			break;
		case "PM":
			form.setPosition("6");
			break;
		case "Junior HR":
			form.setPosition("7");
			break;
		case "Senior HR":
			form.setPosition("8");
			break;
		}
		switch (form.getJapanId()) {
		case "Beginner":
			form.setJapanId("1");
			break;
		case "N5":
			form.setJapanId("2");
			break;
		case "N4":
			form.setJapanId("3");
			break;
		case "N3":
			form.setJapanId("4");
			break;
		case "N2":
			form.setJapanId("5");
			break;
		case "N1":
			form.setJapanId("6");
			break;
		}

		return form;
	}

	private Employee objValueToNum(Employee employee) {
		switch (employee.getDepartmentId()) {
		case "Dev-1":
			employee.setDepartmentId("1");
			break;
		case "Dev-2":
			employee.setDepartmentId("2");
			break;
		case "Dev-3":
			employee.setDepartmentId("3");
			break;
		}
		switch (employee.getPosition()) {
		case "JSE":
			employee.setPosition("1");
			break;
		case "SE":
			employee.setPosition("2");
			break;
		case "SSE":
			employee.setPosition("3");
			break;
		case "TL":
			employee.setPosition("4");
			break;
		case "PL":
			employee.setPosition("5");
			break;
		case "PM":
			employee.setPosition("6");
			break;
		case "Junior HR":
			employee.setPosition("7");
			break;
		case "Senior HR":
			employee.setPosition("8");
			break;
		}
		switch (employee.getJapanId()) {
		case "Beginner":
			employee.setJapanId("1");
			break;
		case "N5":
			employee.setJapanId("2");
			break;
		case "N4":
			employee.setJapanId("3");
			break;
		case "N3":
			employee.setJapanId("4");
			break;
		case "N2":
			employee.setJapanId("5");
			break;
		case "N1":
			employee.setJapanId("6");
			break;
		}
		return employee;
	}

	private EmployeeForm objToForm(Employee emp, EmployeeForm form) {
		form.setEmpid(emp.getEmpid());
		form.setJoinDate(emp.getJoinDate());
		form.setBirthDate(emp.getBirthDate());
		form.setEmail(emp.getEmail());
		form.setName(emp.getName());
		form.setPhNo(emp.getPhNo());
		form.setGender(emp.getGender());
		form.setMaritalStatus(emp.getMaritalStatus());
		form.setDepartmentId(emp.getDepartmentId());
		form.setJapanId(emp.getJapanId());
		form.setPosition(emp.getPosition());
		return form;
	}

	private EmployeeForm objToFormValue(Employee emp, EmployeeForm form) {
		form.setEmpid(emp.getEmpid());
		form.setJoinDate(emp.getJoinDate());
		form.setBirthDate(emp.getBirthDate());
		form.setEmail(emp.getEmail());
		form.setName(emp.getName());
		form.setPhNo(emp.getPhNo());
		form.setGender(emp.getGender());
		form.setMaritalStatus(emp.getMaritalStatus());
		switch (emp.getDepartmentId()) {
		case "1":
			form.setDepartmentId("Dev-1");
			break;
		case "2":
			form.setDepartmentId("Dev-2");
			break;
		case "3":
			form.setDepartmentId("Dev-3");
			break;
		}

		switch (emp.getJapanId()) {
		case "1":
			form.setJapanId("Beginner");
			break;
		case "2":
			form.setJapanId("N5");
			break;
		case "3":
			form.setJapanId("N4");
			break;
		case "4":
			form.setJapanId("N3");
			break;
		case "5":
			form.setJapanId("N2");
			break;
		case "6":
			form.setJapanId("N1");
			break;
		}

		switch (emp.getPosition()) {
		case "1":
			form.setPosition("JSE");
			break;
		case "2":
			form.setPosition("SE");
			break;
		case "3":
			form.setPosition("SSE");
			break;
		case "4":
			form.setPosition("TL");
			break;
		case "5":
			form.setPosition("PL");
			break;
		case "6":
			form.setPosition("PM");
			break;
		case "7":
			form.setPosition("Junior HR");
			break;
		case "8":
			form.setPosition("Senior HR");
			break;
		}
		return form;
	}
}
