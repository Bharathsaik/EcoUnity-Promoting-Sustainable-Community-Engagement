package com.BugNotFound.hackathon.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String password; // Consider hashing this password before storing
    private String aadhar;
    private String contact;
    private String email;
    private String city;

    // Default constructor
    public Customer() {
    }

    // Parameterized constructor
    public Customer(String name, String password, String aadhar, String contact, String email, String city) {
        this.name = name;
        this.password = password; // Hash the password here
        this.aadhar = aadhar;
        this.contact = contact;
        this.email = email;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password; // Hash the password here
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", aadhar='" + aadhar + '\'' +
                ", contact='" + contact + '\'' +
                ", email='" + email + '\'' +
                ", city='" + city + '\'' +
                '}';
    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//
//        Customer customer = (Customer) o;
//
//        if (id != customer.id) return false;
//        if (!name.equals(customer.name)) return false;
//        if (!password.equals(customer.password)) return false;
//        if (!aadhar.equals(customer.aadhar)) return false;
//        if (!contact.equals(customer.contact)) return false;
//        if (!email.equals(customer.email)) return false;
//        return city.equals(customer.city);
//    }
//
//    @Override
//    public int hashCode() {
//        int result = id;
//        result = 31 * result + name.hashCode();
//        result = 31 * result + password.hashCode();
//        result = 31 * result + aadhar.hashCode();
//        result = 31 * result + contact.hashCode();
//        result = 31 * result + email.hashCode();
//        result = 31 * result + city.hashCode();
//        return result;
//    }
}
