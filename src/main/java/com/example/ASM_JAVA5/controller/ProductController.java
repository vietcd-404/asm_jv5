package com.example.ASM_JAVA5.controller;

import com.example.ASM_JAVA5.entity.Categories;
import com.example.ASM_JAVA5.entity.Product;
import com.example.ASM_JAVA5.service.CategoriesService;
import com.example.ASM_JAVA5.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
@RequestMapping("/admin/product")
public class ProductController {
    @Autowired
    private ProductService productService;

    @Autowired
    private CategoriesService categoriesService;

    @GetMapping("/view")
    public String view(Model model){
        List<Product> list = productService.getList();
        model.addAttribute("list",list);
        List<Categories> list1 = categoriesService.getList();
        model.addAttribute("listCategories",list1);
        return "/admin/product";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("add") Product product){
        productService.insert(product);
        return "redirect:/admin/product/view";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id){
        productService.delete(id);
        return "redirect:/admin/product/view";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable("id") Integer id, @ModelAttribute("product") Product product) {
        productService.update(id, product);
        return "redirect:/admin/product/view";
    }

    @GetMapping("/edit/{id}")
    public String viewUpdate(@PathVariable("id") Integer id, Model model) {
        Product product = productService.findById(id);
        model.addAttribute("product", product);
        List<Product> list = productService.getList();
        model.addAttribute("list",list);
        List<Categories> list1 = categoriesService.getList();
        model.addAttribute("listCategories",list1);
        return "/admin/product";
    }
}
