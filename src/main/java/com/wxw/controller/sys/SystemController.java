package com.wxw.controller.sys;

import com.wxw.pojo.User;
import com.wxw.service.UserService;
import com.wxw.util.JsonMsg;
import com.wxw.util.setCookie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/sys")
public class SystemController {

    @Autowired
    private UserService userService;

    /*主页面*/
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    /*登录页*/
    @RequestMapping(value = "/to_login",method = RequestMethod.GET)
    public String toLogin(){
        return "user/login";
    }

    /*主页*/
    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String home(){
        return "home/home";
    }

    /*修改密码*/
    @RequestMapping(value = "/updatePwd",method = RequestMethod.GET)
    public String updatePwd(){
        return "user/updatePwd";
    }

    /*修改密码*/
    @RequestMapping(value = "/userInfo",method = RequestMethod.GET)
    public String userInfo(){
        return "user/userInfo";
    }

    /**
     *
     * 功能描述: 登录验证
     *
     * @param: user,remember,HttpSession,HttpServletRequest,HttpServletResponse
     * @return: JsonMsg
     */
    @RequestMapping("login")
    @ResponseBody
    public JsonMsg loginCheck(User user, @RequestParam(value = "remember",required = false)String remember, HttpSession session
            , HttpServletRequest request, HttpServletResponse response){

        System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        User userSessionInfo = userService.loginCheck(user);  //验证用户名是否存在
        if(userSessionInfo != null){
            session.setAttribute("user",userSessionInfo);
            System.out.println(remember);
            setCookie.setUserLoginCookie(user.getUsername(),user.getPassword(),remember,request,response);
            return JsonMsg.success();
        }else {
            return JsonMsg.fail().addInfo("login_error","输入的账号或者密码错误,请重新输入!");
        }
    }


}
