package kz.narxoz.techorda.servlets;

import kz.narxoz.techorda.db.DBManager;
import kz.narxoz.techorda.db.Tasks;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Tasks> tasks = DBManager.getAllTask();
        request.setAttribute("task", tasks);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }

}
