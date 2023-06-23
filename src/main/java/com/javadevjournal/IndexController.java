package com.javadevjournal;

import com.javadevjournal.customer.data.CustomerModel;
import com.javadevjournal.product.data.ProductModel;
import com.javadevjournal.customer.repo.CustomerRepository;
import com.javadevjournal.product.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class IndexController {

    private final ProductRepository productRepository;
    private final CustomerRepository customerRepository;

    @Autowired
    public IndexController(ProductRepository productRepository, CustomerRepository customerRepository) {
        this.productRepository = productRepository;
        this.customerRepository = customerRepository;
    }

    @GetMapping("/")
    public String index(Model model) {
        List<ProductModel> products = productRepository.findAll();
        List<CustomerModel> customers = customerRepository.findAll();
        model.addAttribute("products", products);
        model.addAttribute("customers", customers);
        return "index";
    }
}
