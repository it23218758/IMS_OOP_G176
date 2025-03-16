package com.example.dao;

import com.example.config.DBConfig;
import com.example.models.Event;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EventDao {

    public List<Event> getAllEvent() {
        List<Event> eventList = new ArrayList<>();
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM news_event_db.event");
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Event event = Event.builder()
                        .id(rs.getInt("id"))
                        .name(rs.getString("name"))
                        .details(rs.getString("details"))
                        .build();
                eventList.add(event);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
        return eventList;
    }

    public void createEvent(Event event) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO news_event_db.event (name, details) VALUES (?, ?)")) {
            stmt.setString(1, event.getName());
            stmt.setString(2, event.getDetails());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void updateEvent(Event event) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("UPDATE news_event_db.event SET name= ? ,details = ? WHERE id = ?")) {
            stmt.setString(1, event.getName());
            stmt.setString(2, event.getDetails());
            stmt.setInt(3, event.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void deleteEvent(int id) {
        try (Connection conn = DBConfig.getConnection();
             PreparedStatement stmt = conn.prepareStatement("DELETE FROM news_event_db.event WHERE id = ?")) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }


}
