package com.test01.alumnos.alumnologinregistro.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "alumnos")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserAlumno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_alumno;

    private String nombreCompleto;
    private String email;
    private String password;
    private String grado;
    private boolean esDelegado;
}
