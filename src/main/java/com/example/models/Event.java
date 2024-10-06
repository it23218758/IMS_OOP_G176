package com.example.models;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class Event {
    private int id;
    private String name;
    private String details;

    public Event(String name, String details) {
        this.name = name;
        this.details = details;
    }
}