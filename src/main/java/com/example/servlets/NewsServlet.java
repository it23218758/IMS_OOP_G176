package com.example.servlets;

import com.example.dao.NewsDao;
import com.example.models.News;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "news", value = "/views/news")
public class NewsServlet extends HttpServlet {
    private NewsDao newsDao;

    public void init() {
        newsDao = new NewsDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<News> newsList = newsDao.getAllNews();
        request.setAttribute("newsList", newsList);
        request.getRequestDispatcher("news.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "create":
                String title = request.getParameter("title");
                String description = request.getParameter("description");
                newsDao.createNews(new News(title, description));
                break;

            case "update":
                int id = Integer.parseInt(request.getParameter("id"));
                String updatedTitle = request.getParameter("title");
                String updatedDescription = request.getParameter("description");
                newsDao.updateNews(new News(id, updatedTitle, updatedDescription));
                break;

            case "delete":
                int deleteId = Integer.parseInt(request.getParameter("id"));
                newsDao.deleteNews(deleteId);
                break;

            default:
                throw new ServletException("Unknown action: " + action);
        }

        response.sendRedirect("news"); // Redirect back to the news page after performing action
    }
}
