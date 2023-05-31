package boot.study.mapper;

import boot.study.dto.LoginDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {
    public int selectCount();
    public int chkLoginByCount();

    int chkLoginByCount(LoginDto dto);
}
