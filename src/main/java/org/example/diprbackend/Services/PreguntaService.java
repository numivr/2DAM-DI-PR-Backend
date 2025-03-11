package org.example.diprbackend.Services;

import org.example.diprbackend.Repositories.PreguntaRepository;
import org.example.diprbackend.Models.Pregunta;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PreguntaService {
    @Autowired
    private PreguntaRepository preguntaRepository;

    public String obtenerEnunciadoPregunta(Long id) {
        return preguntaRepository.findById(id)
                .map(Pregunta::getEnunciado)  // ✅ Versión sin "::"
                .orElse("Pregunta no encontrada");

    }
}
