package kz.narxoz.techorda.servlets;

import kz.narxoz.techorda.db.DBManager;
import kz.narxoz.techorda.db.Tasks;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SaveServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String date = request.getParameter("task_date");

        Tasks task = DBManager.getTask(id);
        if(task!=null){
            task.setName(name);
            task.setDeadlineDate(date);
            task.setDescription(description);
            DBManager.updateTask(task);
            response.sendRedirect("/details?task_id="+id);
        }else{
            response.sendRedirect("/");
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
