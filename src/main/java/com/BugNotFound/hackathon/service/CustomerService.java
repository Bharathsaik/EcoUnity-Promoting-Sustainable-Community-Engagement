package com.BugNotFound.hackathon.service;

import com.BugNotFound.hackathon.model.Customer;
import com.BugNotFound.hackathon.repository.repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private repo rep;

    public Customer findByName(String name) {
        return rep.findByName(name);
    }
}