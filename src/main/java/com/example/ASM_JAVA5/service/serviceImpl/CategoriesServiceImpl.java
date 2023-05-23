package com.example.ASM_JAVA5.service.serviceImpl;

import com.example.ASM_JAVA5.entity.Categories;

import java.util.List;

public interface CategoriesServiceImpl {
     List<Categories> getList();
     Categories insert(Categories student);

     boolean delete(int id);

     Categories update(Integer id, Categories student);

     Categories findById(int id);
}
