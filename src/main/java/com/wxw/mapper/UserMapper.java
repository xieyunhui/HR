package com.wxw.mapper;

import com.wxw.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    public User getUserByName(String username);
}
