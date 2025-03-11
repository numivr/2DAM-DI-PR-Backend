package org.example.diprbackend.Controllers;

import org.example.diprbackend.Models.Jugador;
import org.example.diprbackend.Services.JugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/jugadores")
public class JugadorController {
    @Autowired
    private JugadorService jugadorService;

    @GetMapping("/{id}/nombre")
    public ResponseEntity<String> obtenerNombre(@PathVariable Long id) {
        return ResponseEntity.ok(jugadorService.obtenerNombreJugador(id));
    }

    @GetMapping("/{id}/puntuacion")
    public ResponseEntity<Integer> obtenerPuntuacion(@PathVariable Long id) {
        return ResponseEntity.ok(jugadorService.obtenerPuntuacionJugador(id));
    }

    @GetMapping
    public ResponseEntity<List<Jugador>> obtenerJugadores() {
        return ResponseEntity.ok(jugadorService.obtenerTodosLosJugadores());
    }

    @GetMapping("/top5")
    public ResponseEntity<List<Jugador>> obtenerTop5Jugadores() {
        return ResponseEntity.ok(jugadorService.obtenerTop5Jugadores());
    }

    @PostMapping
    public ResponseEntity<Jugador> guardarJugador(@RequestBody Jugador jugador) {
        return ResponseEntity.ok(jugadorService.guardarJugador(jugador));
    }


}
