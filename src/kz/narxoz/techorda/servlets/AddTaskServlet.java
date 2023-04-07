package kz.narxoz.techorda.servlets;

import kz.narxoz.techorda.db.DBManager;
import kz.narxoz.techorda.db.Tasks;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/home")
public class AddTaskServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Long id = Long.valueOf(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String deadlineDate = request.getParameter("deadlineDate");

        Tasks tasks = new Tasks();
        tasks.setId(id);
        tasks.setName(name);
        tasks.setDescription(description);
        tasks.setDeadlineDate(deadlineDate);
        DBManager.AddTask(tasks);
        response.sendRedirect("/index.jsp");
    }
}
