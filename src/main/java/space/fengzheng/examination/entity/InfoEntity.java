package space.fengzheng.examination.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "t_info")
public class InfoEntity {
    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "user_id")
    private Integer userId;
    private Integer during;
    @Column(name = "key_down")
    private Integer keyDown;
    @Column(name = "success_scale")
    private String successScale;
    @Column(name = "question_number")
    private Integer questionNumber;
    @Column(name = "right_number")
    private Integer rightNumber;
    @Column(name = "warn_number")
    private Integer warnNumber;
    @Column(name = "create_time")
    private Date createTime;
}
