package ru.netology.dao.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dao.repository.DbRepository;

import java.util.List;

@RestController
public class ProductController {

    private final DbRepository repository;

    public ProductController(DbRepository repository) {
        this.repository = repository;
    }

    @GetMapping(value = "/products/fetch-product")
    public List<String> getProduct(@RequestParam("name") String name) {
        return repository.getProductName(name);
    }
}
