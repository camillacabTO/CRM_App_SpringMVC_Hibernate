package com.camilla.CRM_webapp.dao;

import com.camilla.CRM_webapp.entities.Customer;

import java.util.List;

public interface CustomerDAO {

    public List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);

    List<Customer> searchCustomers(String searchName);
}
