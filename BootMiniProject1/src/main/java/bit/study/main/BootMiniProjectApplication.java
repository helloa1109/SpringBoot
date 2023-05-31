package bit.study.main;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan({"boot.study.*","naver.cloud"})
@MapperScan({"boot.study.mapper"})
@SpringBootApplication
public class BootMiniProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootMiniProjectApplication.class, args);
    }

}
