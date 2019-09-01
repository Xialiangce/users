package com.xlc.user;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

import java.text.SimpleDateFormat;
import java.util.Date;


@Configuration
@ComponentScan
@EnableAutoConfiguration
@ImportResource(value = "classpath:/application-dal.xml")
public class UserServer {
    public static void main(String[] args) {
        SpringApplication.run(UserServer.class, args);
        System.out.println(new SimpleDateFormat("[yyyy-MM-dd HH:mm:ss]").format(new Date())
                + " user service server started!");
    }
}
