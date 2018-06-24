package space.fengzheng.examination.service;

import com.alibaba.fastjson.JSONObject;
import space.fengzheng.examination.bean.InfoBean;

public interface QuestionService {
    void saveInfo(InfoBean jsonObject);
}
