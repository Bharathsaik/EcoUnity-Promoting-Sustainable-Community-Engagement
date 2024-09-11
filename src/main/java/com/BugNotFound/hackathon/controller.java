package com.BugNotFound.hackathon;

import com.BugNotFound.hackathon.model.Customer;
import com.BugNotFound.hackathon.model.EventDetails;
import com.BugNotFound.hackathon.repository.repo;
import com.BugNotFound.hackathon.service.CustomerService;
import com.BugNotFound.hackathon.service.EventDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
public class controller {

    @Autowired
    private CustomerService service;

    @Autowired
    private repo rep;
    @RequestMapping("/")
    public String start(){
        return "index";
    }

    @RequestMapping("signin")
    public String signin(Customer cust,Model model){
        rep.save(cust);
        List<EventDetails> events = eventDetailsService.getAllEvents();
        System.out.println("Events: " + events); // Log the events
        model.addAttribute("allEvents", events);
        return "home";
    }


    @PostMapping("/login")
    public String login(String name, String password, Model model) {
        Customer customer = service.findByName(name);
        List<EventDetails> events = eventDetailsService.getAllEvents();
        System.out.println("Events: " + events); // Log the events
        model.addAttribute("allEvents", events);

        if (customer != null && customer.getPassword().equals(password)) {
            return "home";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    @Autowired
    private EventDetailsService eventDetailsService;
    @GetMapping("/events")
    public String viewEventsPage(Model model) {
        model.addAttribute("eventDetails", new EventDetails());
        return "events";
    }

    @GetMapping("/eventscards")
    public String viewAllJobs(Model model) {
        List<EventDetails> events = eventDetailsService.getAllEvents();
        System.out.println("Events: " + events); // Log the events
        model.addAttribute("allEvents", events);
        return "eventscards";
    }

    @GetMapping("/creditsmanagement")
    public String creditsmanagement(){
        return "creditsmanagement";
    }

    @PostMapping("/postEvent")
    public String postEvent(@ModelAttribute EventDetails eventDetails) {
        int id = (int)(Math.random()*9000)+1000;
        eventDetails.setId(id);
        eventDetailsService.saveEvent(eventDetails);
        return "redirect:/events";
    }



    @GetMapping("/details")
    public String showEventDetails(@RequestParam("eventId") int eventId, Model model) {
        EventDetails eventDetails = eventDetailsService.getEventById(eventId);
        if (eventDetails != null) {
            model.addAttribute("eventDetails", eventDetails);
            return "details";
        } else {
            return "error"; // You can create an error page to handle not found events
        }
    }

    @PostMapping("/register")
    public String registerForEvent(@RequestParam("eventId") int eventId, Model model) {
        // Handle registration logic here
        model.addAttribute("message", "Successfully registered for the event!");
        return "registrationSuccess";
    }

    @RequestMapping("/shop")
    public String shop(){
        return "shop";
    }


}
