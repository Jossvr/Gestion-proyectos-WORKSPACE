import com.gestionproyectos.model.Proyecto;
import com.gestionproyectos.service.ProyectoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import java.util.List;

public class ProyectoController {
     @Autowired
    private ProyectoService proyectoService;

    @GetMapping
    public List<Proyecto> listarProyectos() {
        return proyectoService.listarProyectos();
    }

    @PostMapping
    public Proyecto guardarProyecto(@RequestBody Proyecto proyecto) {
        return proyectoService.guardarProyecto(proyecto);
    }
}