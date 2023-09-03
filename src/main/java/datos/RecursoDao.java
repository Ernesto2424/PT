package datos;

import domain.Recurso;
import java.util.List;

/**
 *
 * @author ernes
 */
public interface RecursoDao {

    int insert(Recurso recurso);

    int delete(Recurso recurso);

    Recurso selectById(Recurso recurso);

    int update(Recurso recurso);
    
    List<Recurso> select();
}
