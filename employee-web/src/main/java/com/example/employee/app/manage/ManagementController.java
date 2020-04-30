package com.example.employee.app.manage;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.employee.domain.model.Account;
import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;
import com.example.employee.domain.service.employee.EmployeeService;
import com.example.employee.domain.service.userdetails.SampleUserDetails;

@Controller
@RequestMapping("management")
public class ManagementController {

	@Inject
	EmployeeService empservice;

	@Inject
    Mapper beanMapper;
	
	@ModelAttribute
	public SearchCriteriaForm setupForm() {
		return new SearchCriteriaForm();
	}
	
	@RequestMapping
    public String management(@AuthenticationPrincipal SampleUserDetails userDetails,
    		SearchCriteriaForm form,
    		BindingResult result,
    		@PageableDefault(size = 5) Pageable pageable,
            Model model) {
		Account account = userDetails.getAccount();
        model.addAttribute(account);
    	SearchData criteria = beanMapper.map(form,
                SearchData.class);
        
    	Page<Employee> page =empservice.findAll(criteria, pageable);
    	model.addAttribute("SearchCriteriaForm", new SearchCriteriaForm());
    	model.addAttribute("page", page);
    	
    	return "manage/management";
    }
    
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String showList(@AuthenticationPrincipal SampleUserDetails userDetails,
    		SearchCriteriaForm form,
    		BindingResult result,
    		@PageableDefault(size = 5) Pageable pageable,
            Model model) {
    	Account account = userDetails.getAccount();
        model.addAttribute(account);
    	SearchData criteria = beanMapper.map(form,
                SearchData.class);
        
    	Page<Employee> page =empservice.findAll(criteria, pageable);
    	model.addAttribute("SearchCriteriaForm", new SearchCriteriaForm());
    	model.addAttribute("page", page);
    	
    	return "manage/management";
    }
    
}
