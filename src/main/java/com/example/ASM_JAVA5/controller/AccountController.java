package com.example.ASM_JAVA5.controller;

import com.example.ASM_JAVA5.entity.Account;

import com.example.ASM_JAVA5.service.AccountService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller

public class AccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping("/admin")
    public String homeAdmin(){
        return "/admin/account";
    }

    @GetMapping("/admin/account/view")
    public String view(Model model){
        List<Account> list = accountService.getList();
        model.addAttribute("list",list);
        return "/admin/account";
    }

    @PostMapping("/admin/account/add")
    public String add(@ModelAttribute("add") Account account){
        accountService.insert(account);
        return "redirect:/admin/account/view";
    }

    @GetMapping("/admin/account/delete/{id}")
    public String delete(@PathVariable("id") Integer id){
        accountService.delete(id);
        return "redirect:/admin/account/view";
    }

    @PostMapping("/admin/account/update/{id}")
    public String update(@PathVariable("id") Integer id, @ModelAttribute("account") Account account) {
        accountService.update(id, account);
        return "redirect:/admin/account/view";
    }

    @GetMapping("/admin/account/edit/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model) {
        Account account = accountService.findById(id);
        model.addAttribute("account", account);
        List<Account> list = accountService.getList();
        model.addAttribute("list",list);
        return "/admin/account";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

//    @PostMapping("/login")
//    public String login(@RequestParam("username") String username,
//                        @RequestParam("pass") String password,
//                        HttpSession session,
//                        RedirectAttributes redirectAttributes) {
//        Account account = accountService.login(username, password);
//        if (account != null) {
//            session.setAttribute("account", account);
//            return "redirect:/home";
//        } else {
//            redirectAttributes.addFlashAttribute("error", "Invalid username or password");
//            return "redirect:/login";
//        }
//    }
//
//    @GetMapping("/home")
//    public String showHomePage(HttpSession session, Model model) {
//        Account account = (Account) session.getAttribute("account");
//        if (account != null) {
//            if (accountService.hasAdminRole(account)) {
//                model.addAttribute("isAdmin", true);
//            } else {
//                model.addAttribute("isAdmin", false);
//            }
//            return "/user/home";
//        } else {
//            return "redirect:/login";
//        }
//    }
}
