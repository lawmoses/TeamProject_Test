package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval")
public class AppovalController {
	@RequestMapping("/context2")
	public String approval(Model model) {
		return "approval/context2";
	}
}
