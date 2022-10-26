package com.atguigu.yygh.hosp.repository;

import com.atguigu.yygh.model.hosp.Schedule;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * @author: pwz
 * @create: 2022/10/26 15:18
 * @Description:
 * @FileName: ScheduleRepository
 */
@Repository
public interface ScheduleRepository extends MongoRepository<Schedule, String> {

    Schedule getScheduleByHoscodeAndHosScheduleId(String hoscode, String depcode);

    Schedule getDepartmentByHoscodeAndDepcode(String hoscode, String hosScheduleId);
}
