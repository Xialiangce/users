package com.xlc.user.controller;

import com.xlc.user.dao.UserDao;
import com.xlc.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    UserDao userDao;

    @RequestMapping(method = RequestMethod.POST )
    @ResponseBody
    public int save(@RequestBody User user) {
        return userDao.addUser(user.getUserId(),user.getName());
    }

    @RequestMapping(value = "/{userId}", method = RequestMethod.GET)
    @ResponseBody
    public User get(@PathVariable Integer userId) {
        return userDao.getUser(userId);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public boolean update(@RequestBody User user) {
        return userDao.updateUser(user.getUserId(),user.getName());
    }

    @RequestMapping(value = "/{userId}", method = RequestMethod.DELETE)
    @ResponseBody
    public boolean delete(@PathVariable Integer userId) {
        return userDao.deleteUser(userId);
    }
}
