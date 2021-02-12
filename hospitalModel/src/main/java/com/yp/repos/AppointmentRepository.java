package com.yp.repos;

import com.yp.entity.Appointment;
import com.yp.entity.Doctor;
import com.yp.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AppointmentRepository extends JpaRepository<Appointment, Long> {

    List<Appointment> findAllByDoctor(Doctor doctor);

    List<Appointment> findAllByPatient(Patient patient);

    List<Appointment> findAllByDoctorAndDate(Doctor doctor, String date);

}
