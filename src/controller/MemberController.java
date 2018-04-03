package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BoardDBMybatis;

@Controller
//장효수정
//@RequestMapping("/")
public class MemberController{

//===============> 장효추가 start
	String boardid = "1";
	String pageNum ="1";
	BoardDBMybatis dbPro = BoardDBMybatis.getInstance();
	@ModelAttribute
	public void addAttributes (String boardid, String pageNum) {
		if (pageNum != null && pageNum != "") this.pageNum = pageNum;
	}
//===============> 장효추가 end

	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}
	

	
	@RequestMapping("/main")
	public String list1(Model model) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	//추가
		String boardid = "1";
		int pageSize = 7;
			//처음에 들어올때는 1번이 뜸 (넘어오는 pageNum이 없기 때문에)
		int currentPage = Integer.parseInt(pageNum);
			//db에서 가져올 데이터의 열(currentPage에 노출되는 가장 윗글)
		int startRow = (currentPage - 1) * pageSize + 1;
			//db에서 가져올 데이터의 마지막 열 (currentPage에 노출되는 가장 아래 글)
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		
		List articleList = null;
			//총 게시글 개수
		count = dbPro.getArticleCount(boardid);  
		if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, boardid);	
			}
			//가져올 글 중 가장 최신글의 글 번호(current)
		number = count - (currentPage - 1) * pageSize;
			//노출되는 하단 페이지 수 
		int bottomLine = 3;
			//pageSize<한 페이지에 보여줄 글 개수
			//pageCount<총 페이지의 개수
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			//1,4,7.. 
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
			//3,6,9...			
		int endPage = startPage + bottomLine - 1;
			//startPage로 계산된 endPage가 전체 페이지수 보다 크면 endPage=pageCount로 설정해줌
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

