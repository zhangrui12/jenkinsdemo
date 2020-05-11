package com.bolingcavalry.mavendockerplugindemo.dao;

import com.bolingcavalry.mavendockerplugindemo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author liaohua1
 * @date 2020/5/11 14:51
 */
public interface UserDao extends JpaRepository<User, Integer> {

    User findByUsername(String username);

    User getByUsernameAndPassword(String username, String password);
}
