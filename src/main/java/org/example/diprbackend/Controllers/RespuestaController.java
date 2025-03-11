package org.example.diprbackend.Controllers;

import org.example.diprbackend.Services.RespuestaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/respuestas")
public class RespuestaController {
    @Autowired
    private RespuestaService respuestaService;

    @GetMapping("/pregunta/{id}")
    public ResponseEntity<List<String>> obtenerRespuestas(@PathVariable Long id) {
        return ResponseEntity.ok(respuestaService.obtenerRespuestasDePregunta(id));
    }

    @GetMapping("/correcta/{id}")
    public ResponseEntity<String> obtenerRespuestaCorrecta(@PathVariable Long id) {
        return ResponseEntity.ok(respuestaService.obtenerRespuestaCorrecta(id));
    }
}
