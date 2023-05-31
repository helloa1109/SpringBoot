package mycar.controller;

import mycar.data.MyCarDto;
import mycar.data.MycarDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class MycarController {
    @Autowired
    MycarDao mycarDao;

    @GetMapping("/mycarform")
    public String form()
    {
        return "mycarform";
    }

    @GetMapping("/")
    public String home(Model model)
    {
        //총 갯수
        Long totalCount=mycarDao.getTotalCount();
        //전체 데이타 가져오기
        List<MyCarDto> list=mycarDao.getAllCars();

        model.addAttribute("list", list);
        model.addAttribute("totalCount", totalCount);
        return "mycarlist";
    }

    @PostMapping("addcar")
    public String insert(MyCarDto dto, MultipartFile upload, HttpServletRequest request)
    {
        //업로드할 경로구하기
        String realPath=request.getSession().getServletContext().getRealPath("/save");
        //파일명 dto에 저장
        dto.setCarphoto(upload.getOriginalFilename());
        //파일 업로드
        try {
            upload.transferTo(new File(realPath+"/"+upload.getOriginalFilename()));
            //db.insert
            mycarDao.insertCar(dto);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return "redirect:./";
    }

    @GetMapping("/detail")
    public String detail(Model model,Long num)
    {
        MyCarDto dto = mycarDao.getMycar(num);
        model.addAttribute("dto", dto);
        return "detailcar";
    }

    @GetMapping("/updatecar")
    public String updatecar(Model model,Long num)
    {
        MyCarDto dto=mycarDao.getMycar(num);

        model.addAttribute("dto", dto);
        return "mycarupdateform";
    }

    @PostMapping("/update")
    public String update(MyCarDto dto,MultipartFile upload,HttpServletRequest request)
    {
        //업로드할 경로구하기
        String realPath=request.getSession().getServletContext().getRealPath("/save");
        //파일명 dto에 저장
        if(upload.getOriginalFilename().equals("")){
            //업로드를 안할경우 기존 이름으로 넣는다
            String photo=mycarDao.getMycar(dto.getNum()).getCarphoto();
            dto.setCarphoto(photo);
        }else{
            dto.setCarphoto(upload.getOriginalFilename());
        }
        //파일 업로드
        try {
            upload.transferTo(new File(realPath+"/"+upload.getOriginalFilename()));

        } catch (IllegalStateException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //db update
        mycarDao.updateCar(dto);

        return "redirect:./detail?num="+dto.getNum();
    }

    @GetMapping("/deletecar")
    public String delete(Long num)
    {
        mycarDao.deleteCar(num);
        return "redirect:./";
    }

    @GetMapping("/ajaxlist")
    public String list()
    {
        return "ajaxlist";
    }
}
