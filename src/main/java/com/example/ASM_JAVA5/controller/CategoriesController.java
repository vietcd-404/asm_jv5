package com.example.ASM_JAVA5.controller;

import com.example.ASM_JAVA5.entity.Categories;
import com.example.ASM_JAVA5.service.CategoriesService;
import jakarta.validation.constraints.Past;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/categories")
public class CategoriesController {
//    @GetMapping("/categories")
//    public ModelAndView home(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("home");
//        modelAndView.addObject("message","Hello wold");
//        return modelAndView;
//    }

    @Autowired
    private CategoriesService categoriesService;

    @GetMapping("/view")
    public String view(Model model){
        List<Categories> list = categoriesService.getList();
        model.addAttribute("list",list);
        return "/admin/categories";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("add") Categories categories){
        categoriesService.insert(categories);
        return "redirect:/categories/view";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id){
        categoriesService.delete(id);
        return "redirect:/categories/view";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable("id") Integer id, @ModelAttribute("categories") Categories categories) {
        categoriesService.update(id, categories);
        return "redirect:/categories/view";
    }

    @GetMapping("/edit/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model) {
        Categories categories = categoriesService.findById(id);
        model.addAttribute("categoriesList", categories);
        List<Categories> list = categoriesService.getList();
        model.addAttribute("list",list);
        return "/admin/categories";
    }

}
