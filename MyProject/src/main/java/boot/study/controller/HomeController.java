package boot.study.controller;

import boot.study.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    LoginMapper loginMapper;

    @GetMapping({"/","/main"})
    public String main()
    {
        return "/main";
    }
}
