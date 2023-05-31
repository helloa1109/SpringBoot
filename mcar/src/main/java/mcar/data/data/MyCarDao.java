package mcar.data.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyCarDao {

    @Autowired
    MycarDaoInter carDao;

    public Long getTotalCount()
    {
        return carDao.count();
    }
}
