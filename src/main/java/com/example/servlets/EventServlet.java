package com.example.servlets;

import com.example.dao.EventDao;
import com.example.models.Event;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "event", value = "/views/event")
public class EventServlet extends HttpServlet {
    private EventDao eventDao;

    public void init() {
        eventDao = new EventDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Event> eventList = eventDao.getAllEvent();
        request.setAttribute("eventList", eventList);
        request.getRequestDispatcher("events.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "create":
                String name = request.getParameter("name");
                String details = request.getParameter("details");
                eventDao.createEvent(new Event(name, details));
                break;

            case "update":
                int id = Integer.parseInt(request.getParameter("id"));
                String updatedName = request.getParameter("name");
                String updatedDetails = request.getParameter("details");
                eventDao.updateEvent(new Event(id, updatedName ,updatedDetails));
                break;

            case "delete":
                int deleteId = Integer.parseInt(request.getParameter("id"));
                eventDao.deleteEvent(deleteId);
                break;

            default:
                throw new ServletException("Unknown action: " + action);
        }

        response.sendRedirect("event"); // Redirect back to the event page after performing action
    }
}
