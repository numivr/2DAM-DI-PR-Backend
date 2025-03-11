package org.example.diprbackend.Services;

import org.example.diprbackend.Repositories.JugadorRepository;
import org.example.diprbackend.Models.Jugador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class JugadorService {
    @Autowired
    private JugadorRepository jugadorRepository;

    public String obtenerNombreJugador(Long jugadorId) {
        return jugadorRepository.findById(jugadorId)
                .map(Jugador::getNombre)
                .orElse("Jugador no encontrado");
    }

    public int obtenerPuntuacionJugador(Long jugadorId) {
        return jugadorRepository.findById(jugadorId)
                .map(Jugador::getPuntos)
                .orElse(0);
    }


    public List<Jugador> obtenerTodosLosJugadores() {
        return jugadorRepository.findAll();
    }

    public List<Jugador> obtenerTop5Jugadores() {
        return jugadorRepository.findAll().stream()
                .sorted((j1, j2) -> Integer.compare(j2.getPuntos(), j1.getPuntos()))
                .limit(5)
                .collect(Collectors.toList());
    }

    public Jugador guardarJugador(Jugador jugador) {
        return jugadorRepository.save(jugador);
    }
}
