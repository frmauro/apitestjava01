package com.apitestjava01.javaapitest01.Controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/test")
public class TestController {

    @GetMapping("/helloworld")
    public ResponseEntity<String> get(){
        return ResponseEntity.ok("Hello World !!");
    }
    
}
