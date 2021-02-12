package com.yp.service;

import com.yp.entity.*;
import com.yp.repos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Set;

@Service
public class PatientService {
    @Autowired
    private HospitalRepository hospitalRepository;

    @Autowired
    private DoctorRepository doctorRepository;

    @Autowired
    private UnitRepository unitRepository;

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private PatientRepository patientRepository;

    public Patient getPatientWithId(String patientId){
        return patientRepository.findByUsername(patientId).orElseThrow();
    }

    public List<Hospital> getHospitals(){
        return hospitalRepository.findAll();
    }

    public Set<Unit> getUnitsFromHospitalId(Long hospitalId){
        Hospital h = hospitalRepository.findById(hospitalId).orElseThrow();
        return h.getUnitList();
    }

    public List<Doctor> getDoctorsFromHostipalIdAndUnitId(Long hospitalId, Long unitId){
        Hospital h = hospitalRepository.findById(hospitalId).orElseThrow();
        Unit u = unitRepository.findById(unitId).orElseThrow();
        return doctorRepository.findAllByHospitalAndUnit(h, u);
    }

    public List<Appointment> getAllAppointments(){
        return appointmentRepository.findAll();
    }

    public Appointment getAppointment(Long id){
        return appointmentRepository.findById(id).orElseThrow();
    }
    public void addAppointment(Appointment appointment){
        appointmentRepository.save(appointment);
    }
    public void deleteAppointment(Long id){
        appointmentRepository.deleteById(id);
    }

    public List<Appointment> getPatientAppointment(Long id){
        Patient p = patientRepository.findById(id).orElseThrow();
        return appointmentRepository.findAllByPatient(p);
    }

    public List<Appointment> getDoctorAppointment(Long id, String date){
        Doctor d = doctorRepository.findById(id).orElseThrow();
        return appointmentRepository.findAllByDoctorAndDate(d, date);
    }





}
