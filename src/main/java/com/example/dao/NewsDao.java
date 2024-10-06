package com.example.dao;

import com.example.config.DBConfig;
import com.example.models.News;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NewsDao {

    public List<News> getAllNews() {
        List<News> newsList = new ArrayList<>();
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM news_event_db.news");
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                News news = News.builder()
                        .id(rs.getInt("id"))
                        .title(rs.getString("title"))
                        .description(rs.getString("description"))
                        .build();
                newsList.add(news);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
        return newsList;
    }

    public void createNews(News news) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO news_event_db.news (title, description) VALUES (?, ?)")) {
            stmt.setString(1, news.getTitle());
            stmt.setString(2, news.getDescription());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void updateNews(News news) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("UPDATE news_event_db.news SET title = ?, description = ? WHERE id = ?")) {
            stmt.setString(1, news.getTitle());
            stmt.setString(2, news.getDescription());
            stmt.setInt(3, news.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void deleteNews(int id) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("DELETE FROM news_event_db.news WHERE id = ?")) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
