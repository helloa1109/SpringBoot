package mcar.controller;

import mcar.data.data.MyCarDao;
import mcar.data.data.MyCarDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MycarController {

    @Autowired
    MyCarDao carDao;

    @GetMapping("/mcarform")
    public String form()
    {
        return "mycarform";
    }

    @GetMapping("/")
    public String home(Model model)
    {
        Long totalCount=carDao.getTotalCount();
        model.addAttribute("totalCount", totalCount);
        return "mcarlist";
    }

}
