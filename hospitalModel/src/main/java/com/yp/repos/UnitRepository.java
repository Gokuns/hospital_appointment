package com.yp.repos;

import com.yp.entity.Hospital;
import com.yp.entity.Unit;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UnitRepository extends JpaRepository<Unit, Long> {

}
