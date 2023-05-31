package com.example.bootintellijex1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
    @GetMapping("/hello")
    public @ResponseBody TestDto hello()
    {
        TestDto dto = new TestDto();
        dto.setName("김동규형짱짱맨");
        dto.setAddr("분당");
        dto.setHp("010-1234-5678");
        System.out.println(dto); // toString()이 호출이된다
        return dto;
    }
}
