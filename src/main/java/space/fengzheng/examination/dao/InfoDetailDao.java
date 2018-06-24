package space.fengzheng.examination.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import space.fengzheng.examination.entity.InfoDetailEntity;
import space.fengzheng.examination.entity.InfoEntity;

public interface InfoDetailDao extends JpaRepository<InfoDetailEntity, Integer> {
}
