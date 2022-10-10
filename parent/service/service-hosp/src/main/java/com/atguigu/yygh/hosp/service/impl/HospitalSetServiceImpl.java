package com.atguigu.yygh.hosp.service.impl;

import com.atguigu.yygh.hosp.service.HospitalSetService;
import com.atguigu.yygh.model.hosp.HospitalSet;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.atguigu.yygh.hosp.mapper.HospitalSetMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author: pwz
 * @create: 2022/10/10 15:34
 * @Description:
 * @FileName: HospitalSetServiceImpl
 */
@Service
public class HospitalSetServiceImpl extends ServiceImpl<HospitalSetMapper, HospitalSet> implements HospitalSetService {

    @Resource
    private HospitalSetMapper hospitalSetMapper;

}