package com.BugNotFound.hackathon.repository;

import com.BugNotFound.hackathon.model.EventDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventDetailsRepository extends JpaRepository<EventDetails, String> {
}