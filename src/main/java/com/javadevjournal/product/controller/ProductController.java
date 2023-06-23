package com.javadevjournal.product.controller;

import com.javadevjournal.product.data.ProductModel;
import com.javadevjournal.product.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {

    private final ProductRepository productRepository;

    @Autowired
    public ProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/list")
    public String listProducts(Model model) {
        List<ProductModel> products = productRepository.findAll();
        model.addAttribute("products", products);
        return "product-list";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        ProductModel product = new ProductModel();
        model.addAttribute("product", product);
        return "product-form";
    }
    // @PostMapping("/save")
    // public String saveProduct(@ModelAttribute("product") ProductModel product) {
    //     if (product.getId() > 0) {
    //         // Product with existing ID, perform update
    //         ProductModel existingProduct = productRepository.findById(product.getId())
    //                 .orElseThrow(() -> new IllegalArgumentException("Invalid product Id: " + product.getId()));
    
    //         // Update the existing product with the new data
    //         existingProduct.setCode(product.getCode());
    //         existingProduct.setName(product.getName());
    //         existingProduct.setPrice(product.getPrice());
    
    //         productRepository.save(existingProduct);
    //     } else {
    //         // No ID or invalid ID, it's a new product
    //         productRepository.save(product);
    //     }
    
    //     return "redirect:/products/list";
    // }


    @PostMapping("/save")
    public String saveProduct(@ModelAttribute("product") ProductModel product) {
        productRepository.save(product);
        return "redirect:/products/list";
    }
    
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("productId") int id, Model model) {
        ProductModel product = productRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid product Id: " + id));
        model.addAttribute("product", product);
        return "product-form";
    }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam("productId") int id) {
        productRepository.deleteById(id);
        return "redirect:/products/list";
    }
}
