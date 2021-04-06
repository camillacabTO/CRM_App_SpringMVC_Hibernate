package com.camilla.CRM_webapp.controllers;

import com.camilla.CRM_webapp.entities.Customer;
import com.camilla.CRM_webapp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/customer")
public class CustomerController {

    //dependency injection. Spring will scan for classes with annotation like Component or Repository that implements this interface (field name - camel case)
    @Autowired
    private CustomerService customerService;

    @GetMapping("/list")
    public String listCustomers(Model model) {

        List<Customer> customers = customerService.getCustomers();
        model.addAttribute("customers", customers);
        return "list-customers";
    }

    @GetMapping("/showAddForm")
    public String showAddForm(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "add-form";
    }

    @PostMapping("/addCustomer")
    public String addCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/spring/customer/list";
    }

    @GetMapping("/showEditForm")
    public String showEditForm(@RequestParam("customer_id") int id, Model model) {
        Customer targetCustomer = customerService.getCustomer(id);
        model.addAttribute("customer", targetCustomer);
        return "add-form";
    }

    @GetMapping("/deleteCustomer")
    public String deleteCustomer(@RequestParam("customer_id") int id) {
        customerService.deleteCustomer(id);
        return "redirect:/spring/customer/list";
    }

    @GetMapping("/searchCustomer")
    public String searchCustomer(@RequestParam("searchName") String searchName, Model model) {
        List<Customer> customers = customerService.searchCustomers(searchName);
        model.addAttribute("customers", customers);
        return "list-customers";
    }

}
