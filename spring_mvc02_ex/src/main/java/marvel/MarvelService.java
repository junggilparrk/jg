package marvel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MarvelService {
	@Autowired
	MarvelMapper mm;
	
	public List<Marvel> selectMarvel(){
		return mm.selectList();
	}
	public Marvel selectWithId(int id) {
		return mm.selectWithId(id);
	}
	public int update(Marvel marvel) {
		return mm.update(marvel);
	}
	public int delete(int id) {
		return mm.delete(id);
	} 
	public int insert(Marvel marvel) {
		return mm.insert(marvel);
	}
	public ServiceClass MarvelService(int page) {
		if(page==0) {
			page=1;
		}
		ServiceClass sc = new ServiceClass(page, 8, mm.selectCount());
		List<Marvel> list=mm.selectSomething(sc.getFirstRow(), sc.getCountPerPage());
		sc.setMarvelList(list);
		return sc;
	}
	public Movie selectMovieWithMarvelId(int marvelId) {
		return mm.selectWithMarvelId(marvelId);
	}
}
