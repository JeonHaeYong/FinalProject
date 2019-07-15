package kh.spring.fin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.dto.MemberDTO;
import kh.spring.dto.QuizDTO;
import kh.spring.service.MemberService;
import kh.spring.service.QuizService;

@Controller
public class QuizController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private QuizService qs;
	@Autowired
	private MemberService ms;
	
	@RequestMapping("oxQuiz")
	public String oxQuiz(HttpServletRequest request) {
//		List<MemberDTO> rankList = new ArrayList<>();
//		rankList = ms.memberPointService();
//		request.setAttribute("rankList", rankList);
		//지울 코드
		session.setAttribute("id", "sohee");
		
		List<QuizDTO> list = qs.selectRandQuizService();
		session.setAttribute("list", list); // 랜덤으로 뽑은 문제목록 세션에 담기
		return "sense/oxQuiz";
	}
	
	/**
	 * 정답 확인하기
	 * @param request
	 * @param corr: 선택한 답 목록
	 * @return 맞힌 문제 목록과 획득한 포인트
	 */
	@ResponseBody
	@RequestMapping(value="answerCheck", produces = "text/plain;charset=UTF-8")
	public String answerCheck(HttpServletRequest request, String[] corr, String[] incorr) {
		ModelAndView mav = new ModelAndView();
		String id = (String)session.getAttribute("id");
		List<QuizDTO> list = (List<QuizDTO>)session.getAttribute("list"); // 문제 목록 꺼내와 세션에서 꺼내
		List<Integer> answer = new ArrayList<>();
		List<QuizDTO> wrong = new ArrayList<>(); //틀린문제 리스트 
		int point = 0;
		for(int i = 0; i < 10; i++) {
			if(list.get(i).getCorrect().equals(corr[i])) { //i번째 문제의 답이랑 내가 맞춘거랑 같으면
				answer.add(i+1); //i = 0 이면 문제는 1번  맞춘 문제를 리스트에 담아
				point += list.get(i).getPoint(); //i번째 문제의 포인터를 누적
			}else{
				wrong.add(list.get(i+1)); // 틀린문제 
				
			}
		}
		System.out.println("틀린문제 개수 : " + wrong.size());
		List<MemberDTO> rankList = new ArrayList<>();
		try {
			qs.updatePointService(point, id); // 포인트 업데이트
			rankList = ms.memberPointService();// 포인트 순으로 멤버 리스트 출력
		}catch(Exception e) {e.printStackTrace();}
		
		Gson g = new Gson();
		String rank = g.toJson(rankList);
		String wrongList = g.toJson(wrong);
		request.setAttribute("size", wrong.size());
		
		String data =  "{\"answer\":" + answer +",\"wrongList\":" + wrongList + ",\"point\":" + point + ",\"rankList\":"+rank+"}";
		System.out.println(data);
		return data;
	}
	@RequestMapping("quizAdmin")
	public String quizAdmin(HttpServletRequest request) {
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		session.setAttribute("currentPage", currentPage);
		List<QuizDTO> quizList = new ArrayList<>();
		String navi = null;
		try {
			quizList = qs.selectQuizPerPageService(currentPage);
			navi = qs.getNaviQuizService(currentPage);
		}catch(Exception e) {e.printStackTrace();}
		request.setAttribute("quizList", quizList);
		request.setAttribute("navi", navi);
		return "sense/quizAdmin";
	}
	@RequestMapping("insertQuiz")
	public String insertQuiz(HttpServletRequest request) {
		String quiz = request.getParameter("quiz");
		String correct = request.getParameter("correct");
		int point = Integer.parseInt(request.getParameter("point"));
		String explain = request.getParameter("explain");
		
		QuizDTO qdto = new QuizDTO(0, quiz, correct, point, explain);
		qs.insertQuizService(qdto);
		return "redirect:/quizAdmin";
	}
	@RequestMapping("deleteQuiz")
	public String deleteQuiz(HttpServletRequest request) {
		String[] num = request.getParameterValues("check");
		int[] seq = new int[num.length];
		for(int i = 0; i < num.length; i++) {
			seq[i] = Integer.parseInt(num[i]);
			try {
				qs.deleteQuizService(seq[i]);
			}catch(Exception e) {e.printStackTrace();}
		}
		return "redirect:/quizAdmin?currentPage=" + session.getAttribute("currentPage");
	}
}
