package com.test01.alumnos.alumnologinregistro.services;


import com.test01.alumnos.alumnologinregistro.repositories.UserAlumnoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;
import java.util.List;
import com.test01.alumnos.alumnologinregistro.models.UserAlumno;

@Service
public class UserAlumnoService {

    @Autowired
    private UserAlumnoRepository userAlumnoRepository;

    // Crear nuevo alumno
    public UserAlumno crearAlumno(UserAlumno userAlumno) {
        Optional<UserAlumno> existente = userAlumnoRepository.findByEmail(userAlumno.getEmail());
        if (existente.isPresent()) {
            throw new IllegalArgumentException("El correo ya está registrado.");
        }
        return userAlumnoRepository.save(userAlumno);
    }


    // Login de alumno
    public Optional<UserAlumno> login(String email, String password) {
        Optional<UserAlumno> userAlumno = userAlumnoRepository.findByEmail(email);
        if (userAlumno.isPresent() && userAlumno.get().getPassword().equals(password)) {
            return userAlumno;
        }
        return Optional.empty();
    }

    // Lista de alumnos
    public List<UserAlumno> obtenerTodosLosAlumnos() {
        return userAlumnoRepository.findAll();
    }

}
