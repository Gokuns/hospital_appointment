package com.yp.service;

import com.yp.entity.Appointment;
import java.util.List;

import com.yp.entity.Doctor;
import com.yp.repos.AppointmentRepository;
import com.yp.repos.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private DoctorRepository doctorRepository;

    public Doctor getDoctorWithReg(Long registrationNumber){
        return doctorRepository.findByUserId(registrationNumber).orElseThrow();
    }

    public List<Appointment> getAppointments(){
        return appointmentRepository.findAll();
    }

    List<Appointment> getDoctorsAppointments(Long id){
        Doctor d = doctorRepository.findById(id).orElseThrow();
        return appointmentRepository.findAllByDoctor(d);
    }

}
