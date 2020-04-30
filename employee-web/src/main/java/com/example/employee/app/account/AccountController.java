package com.example.employee.app.account;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.employee.domain.model.Account;
import com.example.employee.domain.service.userdetails.SampleUserDetails;

@Controller
@RequestMapping("account")
public class AccountController {

    @RequestMapping
    public String view(
            @AuthenticationPrincipal SampleUserDetails userDetails,
            Model model) {
        Account account = userDetails.getAccount();
        model.addAttribute(account);
        return "account/view";
    }
}