package boot.study.controller;

import boot.study.dto.LoginDto;
import boot.study.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    LoginMapper loginMapper;
    @GetMapping("/login")
    public String login()
    {
        return "/main/login/login";
    }
    @GetMapping("/loginfail")
    public String loginfail()
    {
        return "/main/login/loginfail";
    }

    @GetMapping("/success")
    public String success()
    {
        return "/main/login/login/success";
    }


    @PostMapping("/loginchk")
    public String chklogin(@ModelAttribute LoginDto dto)
    {
        int chk = loginMapper.chkLoginByCount(dto);
        if (chk == 1) {
            return "redirect:/success"; // 로그인 성공 시 main 페이지로 리다이렉트
        } else {
            return "redirect:/login/loginfail"; // 로그인 실패 시 loginfail 페이지로 리다이렉트
        }
    }
}
