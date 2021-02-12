package com.yp;

import com.yp.entity.Patient;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
public class Main {

    public static void main(String[] args){
        SpringApplication.run(Main.class);
        System.out.println("Application is Running!");

    }
}
