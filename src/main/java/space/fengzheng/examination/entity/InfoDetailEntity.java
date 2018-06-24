package space.fengzheng.examination.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "t_info_detail")
public class InfoDetailEntity {
    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "question_list")
    private String questionList;
    @Column(name = "answer_list")
    private String answerList;
    @Column(name = "result_list")
    private String resultList;
    @Column(name = "info_id")
    private Integer infoId;
}
