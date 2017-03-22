package com.lihao.dao;

import com.lihao.entity.SysUser;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lihao on 2017/3/5.
 */

@Repository
public interface UserDao {

    List<SysUser> select();

}
