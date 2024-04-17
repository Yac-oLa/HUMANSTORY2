package com.kosta.humanstory.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AlarmDTO {
    private String target;
    private String content;
    private String type;
    private String url;
}
