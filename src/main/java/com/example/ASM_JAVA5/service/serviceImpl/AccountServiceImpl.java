package com.example.ASM_JAVA5.service.serviceImpl;

import com.example.ASM_JAVA5.entity.Account;

import java.util.List;


public interface AccountServiceImpl{
    List<Account> getList();

    Account insert(Account account);

    boolean delete(int id);

    Account update(Integer id, Account account);

    Account findById(int id);

    Account login(String username, String password);
    boolean hasAdminRole(Account account);
}
