package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@RequestMapping("/msgList")	//���� ����Ʈ
	public String msgList() {
		return "notice/msgList";
	}
	
	@RequestMapping("/receiveMsg")	//���� �󼼺���
	public String receiveMsg() {
		return "notice/receiveMsg";
	}
	
	@RequestMapping("/sendMsg")	//���� ������
	public String sendMsg() {
		return "notice/sendMsg";
	}
	
}
