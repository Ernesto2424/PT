package datos;

import domain.Recurso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ernes
 */
public class RecursoDaoImp implements RecursoDao {

    private static final String SQL_INSERT = "INSERT INTO recurso (nombre,descripcion,tipo) VALUES (?,?,?)";
    private static final String SQL_SELECTBYID = "SELECT * FROM recurso WHERE id = ?";
    private static final String SQL_UPDATE = "UPDATE recurso SET nombre = ?, descripcion = ?, tipo = ? WHERE id = ?";
    private static final String SQL_SELECT = "SELECT * FROM recurso";

    @Override
    public int insert(Recurso recurso) {
        int row = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = Conexion.getConnection();
            pst = cn.prepareStatement(SQL_INSERT);
            pst.setString(1, recurso.getNombre());
            pst.setString(2, recurso.getDescripcion());
            pst.setString(3, recurso.getTipo());
            row = pst.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RecursoDaoImp.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(pst);
            Conexion.close(cn);
        }
        return row;
    }

    @Override
    public int delete(Recurso recurso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from
                                                                       // nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Recurso selectById(Recurso recurso) {
        Recurso recursoBuscado = null;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            cn = Conexion.getConnection();
            pst = cn.prepareStatement(SQL_SELECTBYID);
            pst.setInt(1, recurso.getId());
            rs = pst.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String descripcion = rs.getString("descripcion");
                String tipo = rs.getString("tipo");
                recursoBuscado = new Recurso(id, nombre, descripcion, tipo);
            }

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pst);
            Conexion.close(cn);
        }
        return recursoBuscado;
    }

    @Override
    public int update(Recurso recurso) {
        int row = 0;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = Conexion.getConnection();
            pst = cn.prepareStatement(SQL_UPDATE);
            pst.setString(1, recurso.getNombre());
            pst.setString(2, recurso.getDescripcion());
            pst.setString(3, recurso.getTipo());
            pst.setInt(4, recurso.getId());
            row = pst.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(pst);
            Conexion.close(cn);
        }
        return row;
    }

    @Override
    public List<Recurso> select() {
        List<Recurso> recursos = new ArrayList();
        Recurso recursoBuscado = null;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            cn = Conexion.getConnection();
            pst = cn.prepareStatement(SQL_SELECT);
            rs = pst.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String descripcion = rs.getString("descripcion");
                String tipo = rs.getString("tipo");
                recursoBuscado = new Recurso(id, nombre, descripcion, tipo);
                recursos.add(recursoBuscado);
            }

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pst);
            Conexion.close(cn);
        }
        return recursos;
    }

}
