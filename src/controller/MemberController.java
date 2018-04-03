package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDBMybatis;

@Controller
//��ȿ����
//@RequestMapping("/")
public class MemberController{

//===============> ��ȿ�߰� start
	String boardid = "1";
	String pageNum ="1";
	BoardDBMybatis dbPro = BoardDBMybatis.getInstance();
	@ModelAttribute
	public void addAttributes (String boardid, String pageNum) {
		if (pageNum != null && pageNum != "") this.pageNum = pageNum;
	}
//===============> ��ȿ�߰� end

	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}
	

	
	@RequestMapping("/main")
	public String list1(Model model) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	//�߰�
		String boardid = "1";
		int pageSize = 7;
			//ó���� ���ö��� 1���� �� (�Ѿ���� pageNum�� ���� ������)
		int currentPage = Integer.parseInt(pageNum);
			//db���� ������ �������� ��(currentPage�� ����Ǵ� ���� ����)
		int startRow = (currentPage - 1) * pageSize + 1;
			//db���� ������ �������� ������ �� (currentPage�� ����Ǵ� ���� �Ʒ� ��)
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		
		List articleList = null;
			//�� �Խñ� ����
		count = dbPro.getArticleCount(boardid);  
		if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, boardid);	
			}
			//������ �� �� ���� �ֽű��� �� ��ȣ(current)
		number = count - (currentPage - 1) * pageSize;
			//����Ǵ� �ϴ� ������ �� 
		int bottomLine = 3;
			//pageSize<�� �������� ������ �� ����
			//pageCount<�� �������� ����
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			//1,4,7.. 
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
			//3,6,9...			
		int endPage = startPage + bottomLine - 1;
			//startPage�� ���� endPage�� ��ü �������� ���� ũ�� endPage=pageCount�� ��������
		if (endPage > pageCount) endPage = pageCount;
	
		model.addAttribute("boardid", boardid);
		model.addAttribute("count", count);
		model.addAttribute("articleList", articleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
	
		
		
		return "board/mainBoard";
	}
	
	
	
	
    
}

