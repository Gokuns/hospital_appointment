package com.yp.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity(name = "AUTHORITIES")
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Authority {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "ID")
    Long id;
    @Column(name= "USERNAME")
    private String username;
    @Column(name= "AUTHORITY")
    private String authority;
}