package com.example.ASM_JAVA5.service;

import com.example.ASM_JAVA5.entity.Product;
import com.example.ASM_JAVA5.repository.ProductRepository;
import com.example.ASM_JAVA5.service.serviceImpl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements ProductServiceImpl {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> getList() {
        return productRepository.findAll();
    }

    @Override
    public Product insert(Product product) {
        return productRepository.save(product);
    }

    @Override
    public boolean delete(int id) {
        productRepository.deleteById(id);
        return true;
    }

    @Override
    public Product update(Integer id, Product product) {
        Product product1 = this.productRepository.findById(product.getId()).orElse(null);
        product1.setName(product.getName());
        product1.setBrand(product.getBrand());
        product1.setStatus(product.getStatus());
        product1.setColor(product.getColor());
        product1.setImage(product.getImage());
        product1.setDescriptions(product.getDescriptions());
        product1.setSize(product.getSize());
        product1.setPrice(product.getPrice());
        product1.setCategories(product.getCategories());
        return productRepository.save(product1);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public Page<Product> getPage(Pageable pageable) {
        return productRepository.findAll(pageable);
    }
}
