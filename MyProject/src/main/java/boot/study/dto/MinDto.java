package boot.study.dto;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("MinDto")
public class MinDto {

    private int num;
    private String foodname;
    private String foodphoto;
    private int foodprice;

}
