package com.example.bootintellijex1;

import lombok.*;

//@Getter
//@Setter
@NoArgsConstructor
@Data // setter,getter,tostring 3개를 합친기능이다!
//@ToString
public class TestDto {
    private String name;
    private String addr;
    private String hp;
}
