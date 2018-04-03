package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@RequestMapping("/msgList")	//쪽지 리스트
	public String msgList() {
		return "notice/msgList";
	}
	
	@RequestMapping("/receiveMsg")	//쪽지 상세보기
	public String receiveMsg() {
		return "notice/receiveMsg";
	}
	
	@RequestMapping("/sendMsg")	//답장 보내기
	public String sendMsg() {
		return "notice/sendMsg";
	}
	
}
