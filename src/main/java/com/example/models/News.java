package com.example.models;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class News {
    private int id;
    private String title;
    private String description;

    public News(String title, String description) {
        this.title = title;
        this.description = description;
    }
}
