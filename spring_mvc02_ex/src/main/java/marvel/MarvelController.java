package marvel;

import java.time.LocalDateTime;

import org.apache.ibatis.annotations.Options;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/marvel")
public class MarvelController {
	@Autowired
	MarvelService ms;
	
	@GetMapping("/list")
	public String marvelListPage(Model model,String page) {
		if(page==null) {
			page="1";
		}
		model.addAttribute("list",ms.MarvelService(Integer.parseInt(page)));
		return "marvelList";
	}
	@PostMapping("/list")
	public String marvelListPage2(Model model) {
		model.addAttribute("list",ms.selectMarvel());
		return "marvelList";
	}
	@GetMapping("/write")
	public String marvelWrite() {
		return "marvelWrite";
	}
	@PostMapping("/write")
	@Options(keyColumn = "marvelId")
	@Options(useGeneratedKeys = true)
	public String insertMarvel(Model model,Marvel marvel){
		marvel.setMarvelId(0);
		marvel.setWriteDate(LocalDateTime.now());
		marvel.setUpdateDate(LocalDateTime.now());
		ms.insert(marvel);
		model.addAttribute("list",ms.selectMarvel());
		return "marvelList"; 
	}
	@GetMapping("/update")
	public String update(Model model,String page) {
		if(page==null) {
			page="1";
		}
		model.addAttribute("list",ms.MarvelService(Integer.parseInt(page)));
		return "marvelUpdate";
	}
	@GetMapping("/updateForm")
	public String updateForm(Model model, int marvelId) {
		model.addAttribute("marvel", ms.selectWithId(marvelId));
		return "updateForm";
	}
	@PostMapping("/update")
	public String marvelUpdate(Model model,Marvel marvel,String page) {
		marvel.setUpdateDate(LocalDateTime.now());
		ms.update(marvel);
		if(page==null) {
			page="1";
		}
		model.addAttribute("list",ms.MarvelService(Integer.parseInt(page)));
		return "marvelList";
	}
	@GetMapping("/delete")
	public String delete(Model model,String page) {
		if(page==null) {
			page="1";
		}
		model.addAttribute("list",ms.MarvelService(Integer.parseInt(page)));
		return "delete";
	}
	@GetMapping("/deleteUpdate")
	public String marvelDelete(Model model,int marvelId,String page) {
		ms.delete(marvelId);
		if(page==null) {
			page="1";
		}
		model.addAttribute("list",ms.MarvelService(Integer.parseInt(page)));
		return "marvelList"; 
	}
}
