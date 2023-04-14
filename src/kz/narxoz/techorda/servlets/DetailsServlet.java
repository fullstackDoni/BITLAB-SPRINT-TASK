package kz.narxoz.techorda.servlets;

import kz.narxoz.techorda.db.DBManager;
import kz.narxoz.techorda.db.Tasks;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        System.out.println(id);
        Tasks tasks = DBManager.getTask(id);
        System.out.println(tasks.getName());
        request.setAttribute("task" , tasks);
        request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
