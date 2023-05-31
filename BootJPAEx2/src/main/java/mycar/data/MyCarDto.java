package mycar.data;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "minicar") // 자동으로 minicar 라는 테이블이 mysql에 생성된다
@Data
public class MyCarDto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long num;

    @Column(name = "carname",length = 100)
    private String carname;

    @Column(name = "carprice")
    private int carprice;

    @Column(name = "carcolor")
    private String carcolor;

    @Column(name = "carphoto")
    private String carphoto;

    //날짜는 수정 시 컬럼 제외를 하겠다는 뜻이다 !! (수정안할거면 false)
    @Column(name = "writeday",updatable = false)
    @CreationTimestamp
    private Timestamp writeday;
}
