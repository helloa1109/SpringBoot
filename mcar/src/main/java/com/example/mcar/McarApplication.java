package com.example.mcar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.persistence.Entity;

@SpringBootApplication
@ComponentScan("mcar.*")
@EntityScan("mcar.data")
@EnableJpaRepositories("mcar.data")
public class McarApplication {

    public static void main(String[] args) {
        SpringApplication.run(McarApplication.class, args);
    }

}
