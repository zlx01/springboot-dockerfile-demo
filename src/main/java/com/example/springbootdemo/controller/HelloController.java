package com.example.springbootdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Lee
 */
@RestController
public class HelloController {
    @GetMapping
    public String test() {
        return "Hello world!";
    }
}
