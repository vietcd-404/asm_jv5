package com.example.ASM_JAVA5.repository;

import com.example.ASM_JAVA5.entity.Categories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriesRepository extends JpaRepository<Categories,Integer> {
}
