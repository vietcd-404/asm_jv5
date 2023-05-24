package com.example.ASM_JAVA5.service.serviceImpl;

import com.example.ASM_JAVA5.entity.Product;
import com.example.ASM_JAVA5.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface ProductServiceImpl {
    List<Product> getList();

    Product insert(Product product);

    boolean delete(int id);

    Product update(Integer id, Product product);

    Product findById(int id);

    Page<Product> getPage(Pageable pageable);
}
