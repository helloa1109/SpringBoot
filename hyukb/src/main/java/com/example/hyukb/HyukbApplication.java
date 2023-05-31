package com.example.hyukb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.persistence.Entity;


@SpringBootApplication
@ComponentScan("hyukb.*")
@Entity("hyukb.data")
@EnableJpaRepositories("hyukb.data")
public class HyukbApplication {

    public static void main(String[] args) {
        SpringApplication.run(HyukbApplication.class, args);
    }

}
