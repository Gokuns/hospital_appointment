package com.yp.controller;

import com.yp.entity.*;
import com.yp.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.Cacheable;

import java.util.List;
import java.util.Set;



@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/patient")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @Cacheable("patient")
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/{id}")
    public Patient getPatientWithId(@PathVariable(value = "id") String id){
        return patientService.getPatientWithId(id);
    }

    @Cacheable("hospitals")
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/hospitals")
    public List<Hospital> getHospitals(){
        return patientService.getHospitals();
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/units")
    public Set<Unit> getUnitsFromHospitalId(@RequestParam("hospitalId") Long id){
        return patientService.getUnitsFromHospitalId(id);
    }

    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/doctors")
    public List<Doctor> getDoctorsFromHospitalIdAndUnitId(@RequestParam("hospitalId") Long hospitalId, @RequestParam("unitId") Long unitId){
        return patientService.getDoctorsFromHostipalIdAndUnitId(hospitalId, unitId);
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/appointments")
    public List<Appointment> getAllAppointments(){
        return patientService.getAllAppointments();
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @PostMapping("/appointments")
    public void addAppointment(@RequestBody Appointment ap){
        patientService.addAppointment(ap);
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @DeleteMapping("/appointments/{id}")
    public void deleteAppointment(@PathVariable(value = "id") Long id){
        patientService.deleteAppointment(id);
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/appointments/{id}")
    public List<Appointment> getPatientAppointment(@PathVariable(value="id") Long id){
        return patientService.getPatientAppointment(id);
    }
    @PreAuthorize("hasAuthority('PATIENT')")
    @GetMapping("/appointments/doctor")
    public List<Appointment> getDoctorAppointment(@RequestParam("id") Long id, @RequestParam("date") String date){
        return patientService.getDoctorAppointment(id, date);
    }


}
