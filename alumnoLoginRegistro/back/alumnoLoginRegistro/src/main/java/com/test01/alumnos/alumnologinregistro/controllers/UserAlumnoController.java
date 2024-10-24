package com.test01.alumnos.alumnologinregistro.controllers;

import com.test01.alumnos.alumnologinregistro.models.UserAlumno;
import com.test01.alumnos.alumnologinregistro.services.UserAlumnoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/alumnos")
public class UserAlumnoController {

    @Autowired
    private UserAlumnoService userAlumnoService;

    //  crear un nuevo alumno
    @PostMapping("/register")
    public ResponseEntity<?> crearAlumno(@RequestBody UserAlumno userAlumno) {
        try {
            return ResponseEntity.ok(userAlumnoService.crearAlumno(userAlumno));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error en el registro de alumno: " + e.getMessage());
        }
    }

    //login
    @PostMapping("/login")
    public ResponseEntity<Map<String, String>> login(@RequestBody Map<String, String> loginData) {
        String email = loginData.get("email");
        String password = loginData.get("password");

        Optional<UserAlumno> userAlumno = userAlumnoService.login(email, password);
        if (userAlumno.isPresent()) {
            return ResponseEntity.ok(Collections.singletonMap("message", "Login exitoso"));
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                    .body(Collections.singletonMap("error", "Correo o contraseña incorrectos"));
        }
    }


    // Obtener lista
    @GetMapping
    public ResponseEntity<List<UserAlumno>> obtenerAlumnos() {
        return ResponseEntity.ok(userAlumnoService.obtenerTodosLosAlumnos());
    }
}