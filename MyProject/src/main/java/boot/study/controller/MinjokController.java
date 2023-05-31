package boot.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/minjok")
public class MinjokController {

    @GetMapping("/home")
    public String home()
    {
        return "/main/minjok/minjoklist";
    }
}
