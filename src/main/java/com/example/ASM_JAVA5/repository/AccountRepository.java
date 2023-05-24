package com.example.ASM_JAVA5.repository;

import ch.qos.logback.core.model.INamedModel;
import com.example.ASM_JAVA5.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findByUsername(String username);
}
