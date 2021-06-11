package marvel;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface MarvelMapper {
	@Insert("insert into marvle values(#{marvelId},#{title},#{titleEng},"
			+ "#{releaseDate},#{worldBoxOffice},#{writeDate},"
			+ "#{updateDate})")
	public int insert(Marvel marvel);
	
	@Select("select * from marvle order by marvel_id desc")
	public List<Marvel>selectList();
	
	@Select("select * from marvle where marvel_id=#{marvelId}")
	public Marvel selectWithId(int marvleId);
	
	@Update("update marvle set title=#{title}, title_eng=#{titleEng},"
			+ "release_date=#{releaseDate},world_box_office=#{worldBoxOffice},write_date=#{writeDate},"
			+ "update_date=#{updateDate} where marvel_id=#{marvelId}")
	public int update(Marvel marvel);
	
	@Delete("delete from marvle where marvel_id=#{marvelId}")
	public int delete(int marvel_id);
	@Select("select count(*) from marvle")
	public int selectCount();
	@Select("select * from marvle order by marvel_id desc limit #{firstRow},#{countPerPage}")
	public List<Marvel> selectSomething(@Param("firstRow") int firstRow,@Param("countPerPage") int countPerPage); 
}
