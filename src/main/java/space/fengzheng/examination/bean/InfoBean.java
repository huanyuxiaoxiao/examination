package space.fengzheng.examination.bean;

import lombok.Data;

import java.util.List;

@Data
public class InfoBean {
    private List<Boolean> result;
    private List<Long> inputTime;
    private Long beginTime;
    private Long endTime;
    private Integer during;
    private Integer keyDownNumber;
    private List<String> questionList;
    private List<String> resultStr;
}
