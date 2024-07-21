
package com.hackatong7.server.presentation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hackatong7.server.application.dto.LibroDTO;
import com.hackatong7.server.application.dto.RegistrarLibroDTO;
import com.hackatong7.server.application.service.LibroService;
import com.hackatong7.server.domain.entity.Libro;
import com.hackatong7.server.infrastructure.security.JwtTokenProvider;

import jakarta.validation.Valid;

/**
 *
 * @author USUARIO
 */
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/books")
public class LibroController {

    @Autowired
    private LibroService libroService;
    @Autowired
    private JwtTokenProvider jwtTokenProvider;


    @GetMapping("/get/{id}")
    public ResponseEntity<?> getLibroById(
            @RequestHeader("Authorization") String token, 
            @PathVariable Long id) {        
        
        String usuario = jwtTokenProvider.getUsuario(token);
        Libro libro = libroService.getLibro(id);      
        if (libro == null) {
            return ResponseEntity.notFound().build();
        }        
        return ResponseEntity.ok(libro);
    }

    @PostMapping("/create")
    public ResponseEntity<?> registrarLibro(
            @RequestHeader("Authorization") String token, 
            @Valid @RequestBody RegistrarLibroDTO registrarLibroDTO) {    
        
        String usuarioCorreo = jwtTokenProvider.getUsuario(token);        
        LibroDTO libroDTO = libroService.registrarLibro(registrarLibroDTO,usuarioCorreo);        
        return ResponseEntity.ok(libroDTO);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<?> actualizarLibro(
            @RequestHeader("Authorization") String token, 
            @PathVariable Long id, 
            @Valid @RequestBody RegistrarLibroDTO actualizarLibroDTO) {
        
        String usuarioCorreo = jwtTokenProvider.getUsuario(token);
        Libro libroActualizado = libroService.actualizarLibro(id, actualizarLibroDTO, usuarioCorreo);
        if (libroActualizado == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(libroActualizado);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> eliminarLibro(
            @RequestHeader("Authorization") String token, 
            @PathVariable Long id) {
        
        String usuarioCorreo = jwtTokenProvider.getUsuario(token);
        libroService.eliminarLibro(id, usuarioCorreo);
        return ResponseEntity.noContent().build();
    }

    
    @GetMapping
    public ResponseEntity<List<LibroDTO>> listarLibrosDelUsuario() {
    	List<LibroDTO> librosDTO = this.libroService.listarLibrosDelUsuario();
    	return ResponseEntity.ok(librosDTO);
    }
    
   
    @GetMapping("/search")
    public ResponseEntity<List<LibroDTO>> buscarLibros(
            @RequestParam("q") String palabraClave) {
        List<LibroDTO> librosDTO = libroService.buscar(palabraClave);
        return ResponseEntity.ok(librosDTO);
    }

}