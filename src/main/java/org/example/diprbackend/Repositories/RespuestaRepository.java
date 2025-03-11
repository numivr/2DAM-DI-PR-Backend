package org.example.diprbackend.Repositories;

import org.example.diprbackend.Models.Respuesta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RespuestaRepository extends JpaRepository<Respuesta, Long> {
    List<Respuesta> findByPreguntaId(Long preguntaId);
    Optional<Respuesta> findByPreguntaIdAndEsCorrectaTrue(Long preguntaId);


}
