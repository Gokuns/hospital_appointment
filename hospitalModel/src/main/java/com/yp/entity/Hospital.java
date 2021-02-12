package com.yp.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;
import java.util.List;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Hospital extends  BaseEntity{

    @ManyToMany
    @JoinTable(name = "HOSPITAL_UNITS",
            joinColumns = {@JoinColumn(name="HOSPITAL_ID")},
            inverseJoinColumns = {@JoinColumn(name = "UNIT_ID")})
    private Set<Unit> unitList;



}
