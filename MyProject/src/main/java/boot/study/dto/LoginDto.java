package boot.study.dto;

import lombok.Data;

@Data
public class LoginDto {
    private int num;
    private String username;
    private String userpass;
    private String useremail;
}
