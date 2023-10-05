/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import datos.AlumnoDao;
import datos.AlumnoDaoImp;
import datos.EvaluacionDao;
import datos.EvaluacionDaoImp;
import datos.RecursoDao;
import datos.RecursoDaoImp;
import datos.UsuarioDao;
import datos.UsuarioDaoImp;
import domain.Alumno;
import domain.Evaluacion;
import domain.Recurso;
import domain.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
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
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
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
        //redireccionamos y pasamos el control a la pagina del login 
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina del registro de usuario
        request.getRequestDispatcher("signUp.jsp").forward(request, response);
    }

    private void menu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de menu
        request.getRequestDispatcher("menu.jsp").forward(request, response);
    }

    private void recursosVisuales(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina los recursos visuales
        request.getRequestDispatcher("visuales.jsp").forward(request, response);
    }

    private void recursosAudioVisuales(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de los recursos audiovisuales
        request.getRequestDispatcher("audioVisuales.jsp").forward(request, response);
    }

    private void examenes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de las evaluaciones
        request.getRequestDispatcher("examenes.jsp").forward(request, response);
    }

    private void reportes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de los reportes
        request.getRequestDispatcher("reportes.jsp").forward(request, response);
    }

    private void cuentos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de los cuentos
        request.getRequestDispatcher("cuentos.jsp").forward(request, response);
    }

    private void canciones(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de las canciones
        request.getRequestDispatcher("canciones.jsp").forward(request, response);
    }

    private void AcercaDe(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //redireccionamos y pasamos el control a la pagina de acerca de
        request.getRequestDispatcher("acercaDe.jsp").forward(request, response);
    }

    private void cerrarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //obtener la sesion, sea una nueva o existente
        HttpSession sesion = request.getSession();
        //validacion para una sesion existente
        if (sesion != null) {
            /*
            removemos los atributos de alumno y usuario
            y finalizamos la sesion (invalidar)
            */
            sesion.removeAttribute("alumno");
            sesion.removeAttribute("usuario");
            sesion.invalidate();
        }
        // redirigimos al inicio
        response.sendRedirect("index.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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

                case "menu":
                    this.menu(request, response);
                    break;

                case "rv":
                    this.recursosVisuales(request, response);
                    break;

                case "rav":
                    this.recursosAudioVisuales(request, response);
                    break;

                case "rtest":
                    this.examenes(request, response);
                    break;

                case "report":
                    this.reportes(request, response);
                    break;

                case "cuentos":
                    this.cuentos(request, response);
                    break;

                case "canciones":
                    this.canciones(request, response);
                    break;

                case "acerca":
                    this.AcercaDe(request, response);
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
    protected List<Recurso> getRecursos() {
        /*creamos una lista de recursos(juegos,test,etc)
          y obtenemos los recursos disponibles desde la
        base de datos
         */
        List<Recurso> recursos;
        RecursoDao recurso = new RecursoDaoImp();
        recursos = recurso.select();
        //regresamos los recursos para compartirlos a la sesion
        return recursos;

    }

    protected List<Evaluacion> getEvaluaciones() {
        /*creamos una lista de evaluaciones del alumno
          y obtenemos las evaluaciones disponibles desde la
        base de datos
         */
        List<Evaluacion> evaluaciones;
        EvaluacionDao ev = new EvaluacionDaoImp();
        evaluaciones = ev.select();
        return evaluaciones;

    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // obtenemos los datos del formulario
        String matricula = request.getParameter("matricula");
        String password = request.getParameter("password");

        // creamos el objeto usuario
        Usuario usuarioObtenido = new Usuario(new Alumno(matricula), password);
        System.out.println("usuarioObtenido = " + usuarioObtenido.toString());

        // obtener los datos se encuentran en la base de datos (metodo usuario by ID)
        UsuarioDao usuDao = new UsuarioDaoImp();
        Usuario usuario = usuDao.selectById(usuarioObtenido);
        System.out.println("usuario = " + usuario);

        // creamos la sesion
        HttpSession sesion = request.getSession();

        // verificacion de los datos del usuario
        if (usuario != null) {
            // preguntamos si la contraseña es la correcta
            if (password.equals(usuario.getPassword())) {
                /*
                Una vez que la contraseña es correcta, obtenemos
                los datos completos del alumno y los compartimos
                a la sesion
                 */
                Alumno alumnoEncontrado = null;
                AlumnoDao alumno = new AlumnoDaoImp();
                alumnoEncontrado = alumno.selectById(new Alumno(matricula));
                sesion.setAttribute("alumno", alumnoEncontrado);
                sesion.setAttribute("usuario", "correcto");
                System.out.println(alumnoEncontrado.toString());

                // compartiendo los recursos y evaluaciones del alumno
                sesion.setAttribute("recursos", this.getRecursos());
                sesion.setAttribute("evaluaciones", this.getEvaluaciones());

            } else {
                /*
                si la contraseña es incorrecta definimos
                un usuario como nulo y un mensaje a mostrar
                con la leyenda que se observa
                 */
                sesion.setAttribute("usuario", null);
                sesion.setAttribute("mensaje", "La contraseña no es Correcta");

            }
        } else {
            //si los datos no existen, se arroja un mensaje con la leyenda siguiente
            sesion.setAttribute("mensaje", "El usuario ingresado no Existe");
        }
        //en cualquier situacion redirigimos al index
        response.sendRedirect("index.jsp");

    }

    protected void signUp(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // obtener los datos del formulario
        String matricula = request.getParameter("matricula");
        String nombre = request.getParameter("nombre");
        String primerApellido = request.getParameter("primerApellido");
        String segundoApellido = request.getParameter("segundoApellido");
        String grupo = request.getParameter("grupo");
        String turno = request.getParameter("turno");
        String password = request.getParameter("password");

        // creamos el objeto alumno y usuario
        Alumno alumno = new Alumno(matricula, nombre, primerApellido, segundoApellido, grupo, turno);
        Usuario usuario = new Usuario(2, alumno, password);

        /*se crea un objeto del tipo alumnoDao
          y lo buscamos en la base de datos
         */
        AlumnoDao aluDao = new AlumnoDaoImp();
        Alumno alumnV = aluDao.selectById(alumno);

        //se realiza la validacion del usuario existente
        if (alumnV == null) {

            // persistimos en la base de datos al alumno y usuario
            aluDao.insert(alumno);
            UsuarioDao usuDao = new UsuarioDaoImp();
            int valor = usuDao.insert(usuario);

            // this.registrar(request, response);
            this.login(request, response);
        } else {
            //si el usuario a registrar ya se encuentra en la base de datos
            //arrojamos el mensaje que se observa
            request.setAttribute("msj", "Usuario ya existente");
            this.registrar(request, response);
        }

    }

    protected void evaluar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // obtener los datos de la evaluacion realizada
        int numCorrectas = Integer.parseInt(request.getParameter("buenas"));
        int numIncorrectas = Integer.parseInt(request.getParameter("malas"));
        int idRecurso = Integer.parseInt(request.getParameter("idRecurso"));
        String idAlumno = request.getParameter("idAlumno");
        String fecha = request.getParameter("fecha");
        System.out.println("fecha = " + fecha);

        // crear el objeto evaluacion
        Evaluacion evaluacion = new Evaluacion(new Recurso(idRecurso), new Alumno(idAlumno), numCorrectas, fecha);
        System.out.println("evaluacion = " + evaluacion);

        // persistimos el objeto evalucion en la base de datos
        EvaluacionDao evaluacioDao = new EvaluacionDaoImp();
        int ins = evaluacioDao.insert(evaluacion);
        System.out.println("ins = " + ins);

        // redireccionamos a la pagina de examnes
        // this.examenes(request, response);
        response.sendRedirect("index.jsp");
    }

    protected List<Evaluacion> evaluacionesFecha(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*obtenemos los datos del formulario para poder buscar las evaluaciones del alumno
          en el periodo de tiempo que se determine*/
        String matricula = request.getParameter("matricula");
        System.out.println("matricula = " + matricula);
        String fechaI = request.getParameter("fechaI");
        System.out.println("fechaI = " + fechaI);
        String fechaF = request.getParameter("fechaF");
        System.out.println("fechaF = " + fechaF);

        //creamos un alumno con la matricula obtenida y una lista para las evaluaciones
        Alumno al = new Alumno(matricula);
        List<Evaluacion> evaluaciones;

        //buscamos en la base de datos las evaluaciones del alumno por el rango de fecha
        EvaluacionDao evalua = new EvaluacionDaoImp();
        evaluaciones = evalua.selectByDate(al, fechaI, fechaF);

        //se comparte una lista de evaluaciones obtenidas
        request.setAttribute("evaluaFecha", evaluaciones);

        //redireccionamos a la pagina actual para poder mostrar las evaluaciones en la tabla
        this.reportes(request, response);

        return evaluaciones;

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
                case "evalua":
                    this.evaluar(request, response);
                    break;
                case "evDate":
                    this.evaluacionesFecha(request, response);
                    break;
                default:

                // throw new AssertionError();
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
