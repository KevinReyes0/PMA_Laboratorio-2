package org.kevinreyes.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.kevinreyes.webapp.model.Carro;
import org.kevinreyes.webapp.service.VentaCarrosService;


@WebServlet("/carro-servlet")
@MultipartConfig
public class VentaCarrosServlet extends HttpServlet {
    private VentaCarrosService ventaCarrosService;
    
    @Override
    public void init() throws ServletException {
        super.init();
        this.ventaCarrosService = new VentaCarrosService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        if (path == null || path.equals("/")) {
            agregarCarros(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Carro> carros = ventaCarrosService.listarCarros();
        req.setAttribute("carros", carros);
        req.getRequestDispatcher("./lista-carros/lista-carros.jsp").forward(req, resp);
    }
    
    
    public void agregarCarros(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String marca = req.getParameter("marca");
        String modelo = req.getParameter("modelo");
        String color = req.getParameter("color");
        String placa = req.getParameter("placa");

        ventaCarrosService.agregarCarros(new Carro(marca, modelo, color, placa));

        resp.sendRedirect(req.getContextPath() + "/");
    }
    
    
    
}
