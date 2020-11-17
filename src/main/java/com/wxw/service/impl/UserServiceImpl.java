package com.wxw.service.impl;

import com.wxw.mapper.UserMapper;
import com.wxw.pojo.User;
import com.wxw.service.UserService;
import com.wxw.util.MySecurity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public User loginCheck(User user) {
        User userTemp = userMapper.getUserByName(user.getUsername());
        if(userTemp == null){
            return null;
        }else if(userTemp.getPassword().equals(MySecurity.encryptUserPassword(user.getPassword(),userTemp.getU_id().toString()))){
            return userTemp;
        }else return null;
    }
}
