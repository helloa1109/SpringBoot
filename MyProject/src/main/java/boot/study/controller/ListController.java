package boot.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ListController {

    @GetMapping("/minjok")
    public String list()
    {
        return "/main/minjok/minjoklist";
    }
}
