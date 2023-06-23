package com.javadevjournal.customer.controller;

import com.javadevjournal.customer.data.CustomerModel;
import com.javadevjournal.customer.repo.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    private final CustomerRepository customerRepository;

    @Autowired
    public CustomerController(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @GetMapping("/list")
    public String listCustomers(Model model) {
        List<CustomerModel> customers = customerRepository.findAll();
        model.addAttribute("customers", customers);
        return "customer-list";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        CustomerModel customer = new CustomerModel();
        model.addAttribute("customer", customer);
        return "customer-form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") CustomerModel customer) {
        customerRepository.save(customer);
        return "redirect:/customers/list";
    }
    @GetMapping("/showFormForUpdate")
public String showFormForUpdate(@RequestParam("customerId") int id, Model model) {
    CustomerModel customer = customerRepository.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid customer Id: " + id));
    model.addAttribute("customer", customer);
    return "customer-form";
}

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("customerId") int id) {
        customerRepository.deleteById(id);
        return "redirect:/customers/list";
    }
}
