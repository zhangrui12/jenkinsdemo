package com.bolingcavalry.mavendockerplugindemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author liaohua1
 * @date 2020/4/14 15:54
 */
@RestController
public class TestController {

    @RequestMapping("/hello")
    public String hello(){
        return "Hello, liaohua" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }
}
