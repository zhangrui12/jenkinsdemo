package com.bolingcavalry.mavendockerplugindemo.service;

import com.bolingcavalry.mavendockerplugindemo.dao.UserDao;
import com.bolingcavalry.mavendockerplugindemo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author liaohua1
 * @date 2020/5/11 14:53
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public boolean isExist(String username) {
        User user = getByName(username);
        return null!=user;
    }

    public User getByName(String username) {
        return userDao.findByUsername(username);
    }

    public User get(String username, String password){
        return userDao.getByUsernameAndPassword(username, password);
    }

    public void add(User user) {
        userDao.save(user);
    }

}
