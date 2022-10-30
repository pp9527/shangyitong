package com.atguigu.yygh.user.service;

import com.atguigu.yygh.model.user.UserInfo;
import com.atguigu.yygh.vo.user.LoginVo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * @author: pwz
 * @create: 2022/10/30 14:59
 * @Description:
 * @FileName: UserInfoService
 */
public interface UserInfoService extends IService<UserInfo> {

    //会员登录
    Map<String, Object> login(LoginVo loginVo);

}
