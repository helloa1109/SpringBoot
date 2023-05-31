package com.example.bootjpaex2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("mycar.*")
@EntityScan("mycar.data") //JPA할때 추가해줘야됨
@EnableJpaRepositories("mycar.data")
public class BootJpaEx2Application {

    public static void main(String[] args) {
        SpringApplication.run(BootJpaEx2Application.class, args);
    }

}
