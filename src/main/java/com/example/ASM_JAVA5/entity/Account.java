package com.example.ASM_JAVA5.entity;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "account")
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    private int status;

    private int role;

    private String name;

    private String avatar;

    private String email;

    private String username;

    private String pass;


    @OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
    private List<Order> orderList;
}
