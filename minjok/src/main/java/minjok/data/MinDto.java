package minjok.data;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "minjok")
@Data
public class MinDto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long num;

    @Column(name = "foodname", length = 100)
    private String foodname;

    @Column(name = "foodprice")
    private int foodprice;

    @Column(name = "foodphoto")
    private String foodphoto;

}
