package com.BugNotFound.hackathon.repository;

import com.BugNotFound.hackathon.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface repo extends JpaRepository<Customer, Integer> {
    Customer findByName(String name);
}
