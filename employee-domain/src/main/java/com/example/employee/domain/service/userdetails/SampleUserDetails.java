package com.example.employee.domain.service.userdetails;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.example.employee.domain.model.Account;

public class SampleUserDetails extends User {
    private static final long serialVersionUID = 1L;

    private final Account account;

    public SampleUserDetails(Account account) {
        super(account.getUserName(), account.getPassword(), AuthorityUtils
                .createAuthorityList("ROLE_USER"));
        this.account = account;
    }

    public Account getAccount() {
        return account;
    }

}

