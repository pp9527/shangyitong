package com.atguigu.yygh.msm.service;

/**
 * @author: pwz
 * @create: 2022/10/30 15:48
 * @Description:
 * @FileName: MsmService
 */
public interface MsmService {

    //发送手机验证码
    boolean send(String phone, String code);
}
