/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import datos.AlumnoDao;
import datos.AlumnoDaoImp;
import datos.UsuarioDao;
import datos.UsuarioDaoImp;
import domain.Alumno;
import domain.Evaluacion;
import domain.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 *
 * @author ernes
 */
@WebServlet(name = "controller", urlPatterns = {"/controller"})
public class controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    private void inicial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("signUp.jsp").forward(request, response);
    }
    
    private void menu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("menu.jsp").forward(request, response);
    }
    
    private void cerrarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        if(sesion!=null){
            sesion.removeAttribute("alumno");
            sesion.removeAttribute("usuario");
            sesion.invalidate();
        }
        //redirigimos al inicio
        response.sendRedirect("index.jsp");
    }
    
    private void crearReporteAlumno(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ServletOutputStream out = response.getOutputStream();
        try {
            InputStream logoEmpresa = this.getServletConfig()
                    .getServletContext()
                    .getResourceAsStream("logo.png"),
                    
                    reporteAlumno = this.getServletConfig()
                            .getServletContext()
                            .getResourceAsStream("reportes/ReporteEvaluacionAlumno.jasper");
            
            if (logoEmpresa != null  && reporteAlumno != null) {
                String jsonEvalaucionAlumno = request.getParameter("lista"); //OJO
                Gson gson = new Gson();
                List<Evaluacion> reporteEvaluacion = new ArrayList<>();
                List<Evaluacion> reporteEvaluacion2 = new ArrayList<>();

                reporteEvaluacion.add(new Evaluacion());
                reporteEvaluacion2 = gson.fromJson(jsonEvalaucionAlumno, new TypeToken<List<Evaluacion>>() {
                }.getType());
                reporteEvaluacion.addAll(reporteEvaluacion2);

                JasperReport report = (JasperReport) JRLoader.loadObject(reporteAlumno);
                JRBeanArrayDataSource ds = new JRBeanArrayDataSource(reporteEvaluacion.toArray());

                Map<String, Object> parameters = new HashMap();
                parameters.put("ds", ds);
                parameters.put("logoEmpresa", logoEmpresa);
                response.setContentType("application/pdf");
                response.addHeader("Content-disposition", "inline; filename=ReporteEvaluacionAlumno.pdf");
                JasperPrint jasperPrint = JasperFillManager.fillReport(report, parameters, ds);
                JasperExportManager.exportReportToPdfStream(jasperPrint, out);
                out.flush();
                out.close();
            } else {
                response.setContentType("text/plain");
                out.println("no se pudo generar el reporte");
                out.println("esto puede debrse a que la lista de datos no fue recibida o el archivo plantilla del reporte no se ha encontrado");
                out.println("contacte a soporte");
            }
        } catch (Exception e) {
            response.setContentType("text/plain");
            out.print("ocurrió un error al intentar generar el reporte:" + e.getMessage());
            e.printStackTrace();
        }

    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("at");

        if (accion != null) {
            switch (accion) {
                case "inicio":
                    this.inicial(request, response);
                    break;

                case "register":
                    this.registrar(request, response);
                    break;
                    
                case "toPdf":
                    this.crearReporteAlumno(request, response);
                    break;
                    
                case "menu":
                    this.menu(request, response);
                    break;
                    
                case "cerrarSesion":
                    this.cerrarSesion(request, response);
                    break;
                    
                default:
                    throw new AssertionError();
            }
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //obtenemos los datos del formulario
        String matricula = request.getParameter("matricula");
        String password = request.getParameter("password");

        //creamos el objeto usuario
        Usuario usuarioObtenido = new Usuario(new Alumno(matricula), password);
        System.out.println("usuarioObtenido = " + usuarioObtenido.toString());

        //obtener los datos se encuentran en la base de datos (metodo usuario by ID)
        UsuarioDao usuDao = new UsuarioDaoImp();
        Usuario usuario = usuDao.selectById(usuarioObtenido);
        System.out.println("usuario = " + usuario);

        //creamos la sesion
        HttpSession sesion = request.getSession();

        //verificacion de los datos del usuario
        if (usuario != null) {
            //preguntamos si la contraseña es la misma
            if (password.equals(usuario.getPassword())) {
                
                Alumno alumnoEncontrado = null;
                AlumnoDao alumno = new AlumnoDaoImp();
                alumnoEncontrado = alumno.selectById(new Alumno(matricula));
                sesion.setAttribute("alumno", alumnoEncontrado);
                sesion.setAttribute("usuario", "correcto");
                System.out.println(alumnoEncontrado.toString());
                
            } else {
                sesion.setAttribute("usuario", null);
                sesion.setAttribute("mensaje", "La contraseña no es Correcta");

            }
        }else{
            sesion.setAttribute("mensaje", "El usuario ingresado no Existe");
        }

        response.sendRedirect("index.jsp");

    }

    protected void signUp(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //obtener los datos del formulario
        String matricula = request.getParameter("matricula");
        String nombre = request.getParameter("nombre");
        String primerApellido = request.getParameter("primerApellido");
        String segundoApellido = request.getParameter("segundoApellido");
        String grupo = request.getParameter("grupo");
        String turno = request.getParameter("turno");
        String password = request.getParameter("password");

        //creamos el objeto alumno y usuario
        Alumno alumno = new Alumno(matricula, nombre, primerApellido, segundoApellido, grupo, turno);
        Usuario usuario = new Usuario(2, alumno, password);

        //persistimos en la base de datos al alumno y usuario
        AlumnoDao aluDao = new AlumnoDaoImp();
        aluDao.insert(alumno);

        UsuarioDao usuDao = new UsuarioDaoImp();
        int valor = usuDao.insert(usuario);

        String msj = "algo ha fallado";
        if (valor > 0) {
            msj = "se ha creado exitosamente";
        }
        request.setAttribute("mensaje", msj);
        //this.registrar(request, response);
        this.login(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String at = request.getParameter("at");

        if (at != null) {

            switch (at) {
                case "login":
                    this.login(request, response);
                    break;
                case "signUp":
                    this.signUp(request, response);
                    break;
                default:
                    throw new AssertionError();
            }

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
