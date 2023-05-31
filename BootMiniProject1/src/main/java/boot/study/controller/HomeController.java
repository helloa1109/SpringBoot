package boot.study.controller;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import org.slf4j.Logger;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping({"/","/home1"})
    public String home1()
    {
        return "/main"; //tiles.xml에 name이 /main인 definition이 적용된다 !!
    }

    @GetMapping("/home2")
    public String home2()
    {
        return "/sub"; //위와 같다 ..!
    }





}
