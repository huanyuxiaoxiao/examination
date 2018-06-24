package space.fengzheng.examination.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import space.fengzheng.examination.entity.InfoEntity;

public interface InfoDao extends JpaRepository<InfoEntity, Integer> {
}
