package space.fengzheng.examination.controller;

import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import space.fengzheng.examination.bean.InfoBean;
import space.fengzheng.examination.service.QuestionService;

import javax.annotation.Resource;

@Slf4j
@RestController
public class DataController {
    @Resource
    QuestionService questionService;

    @PostMapping("postResult")
    public boolean postResult(@RequestBody InfoBean infoBean){
        questionService.saveInfo(infoBean);
        return true;
    }

}
