package com.atguigu.yygh.hosp.controller;

import com.atguigu.yygh.common.result.Result;
import com.atguigu.yygh.hosp.service.HospitalService;
import com.atguigu.yygh.model.hosp.Hospital;
import com.atguigu.yygh.vo.hosp.HospitalQueryVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author: pwz
 * @create: 2022/10/26 16:13
 * @Description:
 * @FileName: HospitalController
 */
@Api(tags = "医院管理接口")
@RestController
@RequestMapping("/admin/hosp/hospital")
@CrossOrigin
public class HospitalController {

    @Resource
    private HospitalService hospitalService;

    @ApiOperation(value = "获取分页列表")
    //医院列表(条件查询分页)
    @GetMapping("list/{page}/{limit}")
    public Result listHosp(@PathVariable Integer page,
                           @PathVariable Integer limit,
                           HospitalQueryVo hospitalQueryVo) {
        Page<Hospital> pageModel = hospitalService.selectHospPage(page, limit, hospitalQueryVo);
//        List<Hospital> content = pageModel.getContent();
//        long totalElements = pageModel.getTotalElements();

        return Result.ok(pageModel);
    }

    //更新医院上线状态
    @ApiOperation(value = "更新医院上线状态")
    @GetMapping("updateHospStatus/{id}/{status}")
    public Result updateHospStatus(@PathVariable String id, @PathVariable Integer status) {
        hospitalService.updateStatus(id, status);
        return Result.ok();
    }

    //医院详情信息
    @ApiOperation(value = "医院详情信息")
    @GetMapping("showHospDetail/{id}")
    public Result showHospDetail(@PathVariable String id) {
        Map<String, Object> map = hospitalService.getHospById(id);
        return Result.ok(map);
    }
}