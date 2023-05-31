package mycar.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MycarDao {

    @Autowired
    MycarDaoInter carDao; // jpa에 있는 메서드를 사용하기위해서

    //전체 갯수 반환
    public long getTotalCount()
    {
        return carDao.count();
    }

    //insert
    public void insertCar(MyCarDto dto)
    {
        carDao.save(dto); //num 값 유무에 따라 insert 또는 update 실행
    }

    public List<MyCarDto> getAllCars()
    {
        //입력한 순서대로 출력하는 방법!
        //return carDao.findAll();

        //가격이 비싼것부터 출력하고 싶을경우
        return carDao.findAll(Sort.by(Sort.Direction.DESC, "carprice"));
    }

    //detail
    public MyCarDto getMycar(Long num)
    {
        return carDao.getReferenceById(num);
    }

    //update
    public void updateCar(MyCarDto dto)
    {
        carDao.save(dto); //이번에 num이 포함이므로 수정을 해준다
    }

    //delete
    public void deleteCar(Long num)
    {
        carDao.deleteById(num);
    }

    //list
    public List<MyCarDto> getSortCars(int idx)
    {
        if(idx==1)
            return carDao.findAll(Sort.by(Sort.Direction.DESC, "carprice"));
        else if(idx==2)
            return carDao.findAll(Sort.by(Sort.Direction.ASC, "carprice"));
        else
            return carDao.findAll();
    }
}