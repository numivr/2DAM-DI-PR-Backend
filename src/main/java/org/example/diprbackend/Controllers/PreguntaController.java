package org.example.diprbackend.Controllers;

import org.example.diprbackend.Services.PreguntaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/preguntas")
public class PreguntaController {
    @Autowired
    private PreguntaService preguntaService;

    @GetMapping("/{id}")
    public ResponseEntity<String> obtenerEnunciado(@PathVariable Long id) {
        return ResponseEntity.ok(preguntaService.obtenerEnunciadoPregunta(id));
    }
}
