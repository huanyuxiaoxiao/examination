package space.fengzheng.examination.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import space.fengzheng.examination.bean.InfoBean;
import space.fengzheng.examination.dao.InfoDao;
import space.fengzheng.examination.dao.InfoDetailDao;
import space.fengzheng.examination.entity.InfoDetailEntity;
import space.fengzheng.examination.entity.InfoEntity;
import space.fengzheng.examination.service.QuestionService;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Resource
    InfoDao infoDao;
    @Resource
    private InfoDetailDao infoDetailDao;

    @Override
    @Transactional
    public void saveInfo(InfoBean infoBean) {
        int success=0;
        int warn=0;
        for (Boolean o : infoBean.getResult()) {
            if(o){
                success++;
            }else{
                warn++;
            }
        }
        InfoEntity entity=new InfoEntity();
        entity.setCreateTime(new Date());
        entity.setDuring(infoBean.getDuring());
        entity.setKeyDown(infoBean.getKeyDownNumber());
        entity.setQuestionNumber(infoBean.getQuestionList().size());
        entity.setRightNumber(success);
        entity.setWarnNumber(warn);
        entity.setSuccessScale(new BigDecimal((float)entity.getRightNumber()/ entity.getQuestionNumber()).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
        infoDao.save(entity);
        InfoDetailEntity detailEntity=new InfoDetailEntity();
        detailEntity.setInfoId(entity.getId());
        detailEntity.setAnswerList(JSONObject.toJSONString(infoBean.getResultStr()));
        detailEntity.setQuestionList(JSONObject.toJSONString(infoBean.getQuestionList()));
        detailEntity.setResultList(JSONObject.toJSONString(infoBean.getResult()));
        infoDetailDao.save(detailEntity);
    }
}
