package com.BugNotFound.hackathon.service;

import com.BugNotFound.hackathon.model.EventDetails;
import com.BugNotFound.hackathon.repository.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EventDetailsService {
    @Autowired
    private EventRepo eventDetailsRepository;

    public List<EventDetails> getAllEvents() {
        return eventDetailsRepository.findAll();
    }

    public void saveEvent(EventDetails eventDetails) {
        eventDetailsRepository.save(eventDetails);
    }

    public EventDetails getEventById(int id) {
        Optional<EventDetails> optionalEvent = eventDetailsRepository.findById(id);
        return optionalEvent.orElse(null);
    }
}