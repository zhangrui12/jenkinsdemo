package com.bolingcavalry.mavendockerplugindemo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.text.SimpleDateFormat;

import java.util.Date;

@RestController
public class Hello {

    @RequestMapping("/hello")
    public String hello(){
        return "Hello, liaohua" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }
}
