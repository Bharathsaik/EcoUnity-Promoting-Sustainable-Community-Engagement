package com.BugNotFound.hackathon.repository;

import com.BugNotFound.hackathon.model.EventDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventRepo extends JpaRepository<EventDetails, Integer> {
}