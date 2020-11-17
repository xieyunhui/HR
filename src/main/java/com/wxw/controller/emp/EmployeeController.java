package com.wxw.controller.emp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/emp")
public class EmployeeController {

    @RequestMapping("/list")
    public String empList(){
        return "/emp/EmployeeList";
    }

    @RequestMapping("/add")
    public String add(){
        return "/emp/empAdd";
    }
}
