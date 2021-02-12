package com.yp.entity;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Appointment extends BaseEntity{

    private String date;
    private int time;

    @OneToOne
    @JoinColumn(name = "PATIENT_ID")
    private Patient patient;

    @OneToOne
    @JoinColumn(name = "DOCTOR_ID")
    private Doctor doctor;
}
