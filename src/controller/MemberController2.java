package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//장효수정
//@RequestMapping("/")
public class MemberController2{

	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}
	

	
	@RequestMapping("/main")
	public String Login(Model model) throws Exception {
		
		
		
		return "board/mainBoard";
	}
	
	
	

}

