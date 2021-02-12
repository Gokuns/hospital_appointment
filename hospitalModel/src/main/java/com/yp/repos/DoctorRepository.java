package com.yp.repos;

import com.yp.entity.Doctor;
import com.yp.entity.Hospital;
import com.yp.entity.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import java.util.Optional;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {

    Optional<Doctor> findByUserId(Long userId);

    List<Doctor> findAllByHospitalAndUnit(Hospital hospital, Unit unit);






}
