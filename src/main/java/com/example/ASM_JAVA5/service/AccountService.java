package com.example.ASM_JAVA5.service;

import com.example.ASM_JAVA5.entity.Account;
import com.example.ASM_JAVA5.repository.AccountRepository;
import com.example.ASM_JAVA5.service.serviceImpl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AccountService implements AccountServiceImpl {
    @Autowired
    private AccountRepository accountRepository;

    @Override
    public List<Account> getList() {
        return accountRepository.findAll();
    }

    @Override
    public Account insert(Account account) {
        return accountRepository.save(account);
    }

    @Override
    public boolean delete(int id) {
        accountRepository.deleteById(id);
        return true;
    }

    @Override
    public Account update(Integer id, Account account) {
        Account account1 = accountRepository.findById(account.getId()).orElse(null);
        account1.setName(account.getName());
        account1.setStatus(account.getStatus());
        account1.setAvatar(account.getAvatar());
        account1.setEmail(account.getEmail());
        account1.setPass(account.getPass());
        account1.setUsername(account.getUsername());
        account1.setRole(account.getRole());
        return accountRepository.save(account1);
    }

    @Override
    public Account findById(int id) {
        return accountRepository.findById(id).orElse(null);
    }

    @Override
    public Account login(String username, String password) {
        Account account = accountRepository.findByUsername(username);
        if (account != null && account.getPass().equals(password)) {
            return account;
        }
        return null;
    }

    @Override
    public boolean hasAdminRole(Account account) {
        return account.getRole() == 0; // Kiểm tra role là admin
    }


}
