package org.example.diprbackend.Services;

import org.example.diprbackend.Repositories.RespuestaRepository;
import org.example.diprbackend.Models.Respuesta;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RespuestaService {
    @Autowired
    private RespuestaRepository respuestaRepository;

    public List<String> obtenerRespuestasDePregunta(Long preguntaId) {
        return respuestaRepository.findByPreguntaId(preguntaId)
                .stream()
                .map(Respuesta::getOpcion)
                .collect(Collectors.toList());
    }

    public String obtenerRespuestaCorrecta(Long preguntaId) {
        return respuestaRepository.findByPreguntaIdAndEsCorrectaTrue(preguntaId)
                .map(Respuesta::getOpcion)
                .orElse("Respuesta correcta no encontrada");
    }
}
