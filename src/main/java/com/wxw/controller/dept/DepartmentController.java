package com.wxw.controller.dept;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dept")
public class DepartmentController {

    @RequestMapping("/list")
    public String empList(){
        return "/dept/DepartmentList";
    }

    @RequestMapping("/add")
    public String add(){
        return "/dept/deptAdd";
    }
}
