package com.test01.alumnos.alumnologinregistro.repositories;


import com.test01.alumnos.alumnologinregistro.models.UserAlumno;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UserAlumnoRepository extends JpaRepository<UserAlumno, Long> {
    Optional<UserAlumno> findByEmail(String email);
}
