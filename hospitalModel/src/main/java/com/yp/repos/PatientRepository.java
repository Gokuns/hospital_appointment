package com.yp.repos;

import com.yp.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PatientRepository extends JpaRepository<Patient, Long> {

    public Optional<Patient> findByUsername(String userId);

}
