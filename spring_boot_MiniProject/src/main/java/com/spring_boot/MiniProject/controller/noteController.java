package com.spring_boot.MiniProject.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.MiniProject.model.CategoryVO;
import com.spring_boot.MiniProject.model.CommentVO;
import com.spring_boot.MiniProject.model.NoteVO;
import com.spring_boot.MiniProject.model.UserVO;
import com.spring_boot.MiniProject.service.NoteService;
import com.spring_boot.MiniProject.service.UserService;

@Controller
public class noteController {

	@Autowired
	NoteService noteService;

	@Autowired
	UserService userService;

	@RequestMapping("/test")
	public String viewIndex() {
		return "test/index";
	}

	// 공지사항페이지 보기
	@RequestMapping("/test/noticePage")
	public String viewNoticePage() {
		return "test/noticePage";
	}

	@RequestMapping("/test/questionPage")
	public String viewQuestionPage(Model model) {

		ArrayList<String> hashtagList = noteService.selectHashtag();
		ArrayList<NoteVO> noteList = noteService.selectQuestionNoteList(0);

		for (int i = 0; i < noteList.size(); i++) {
			ArrayList<String> hashtag = new ArrayList<String>();
			if (noteList.get(i).getHashName1() != null) {
				hashtag.add(noteList.get(i).getHashName1());
			}
			if (noteList.get(i).getHashName2() != null) {
				hashtag.add(noteList.get(i).getHashName2());
			}
			if (noteList.get(i).getHashName3() != null) {
				hashtag.add(noteList.get(i).getHashName3());
			}
			if (noteList.get(i).getHashName4() != null) {
				hashtag.add(noteList.get(i).getHashName4());
			}
			if (noteList.get(i).getHashName5() != null) {
				hashtag.add(noteList.get(i).getHashName5());
			}
			if (noteList.get(i).getHashName6() != null) {
				hashtag.add(noteList.get(i).getHashName6());
			}
			if (noteList.get(i).getHashName7() != null) {
				hashtag.add(noteList.get(i).getHashName7());
			}
			if (noteList.get(i).getHashName8() != null) {
				hashtag.add(noteList.get(i).getHashName8());
			}
			if (noteList.get(i).getHashName9() != null) {
				hashtag.add(noteList.get(i).getHashName9());
			}
			if (noteList.get(i).getHashName10() != null) {
				hashtag.add(noteList.get(i).getHashName10());
			}
			noteList.get(i).setHashname(hashtag);
			noteList.get(i).setUserNickname(userService.selectUserNickname(noteList.get(i).getUserId()));
			noteList.get(i).setUserImg(userService.selectUserImg(noteList.get(i).getUserId()));
		}

		model.addAttribute("hashtagList", hashtagList);
		model.addAttribute("noteList", noteList);

		return "test/questionPage";
	}

	// 질문페이지 보기
	@RequestMapping("/test/questionPage/list")
	public String viewQuestionPage(@RequestParam(value = "page") int page, Model model) {

		ArrayList<String> hashtagList = noteService.selectHashtag();
		ArrayList<NoteVO> noteList = noteService.selectQuestionNoteList(page * 10);

		for (int i = 0; i < noteList.size(); i++) {
			ArrayList<String> hashtag = new ArrayList<String>();
			if (noteList.get(i).getHashName1() != null) {
				hashtag.add(noteList.get(i).getHashName1());
			}
			if (noteList.get(i).getHashName2() != null) {
				hashtag.add(noteList.get(i).getHashName2());
			}
			if (noteList.get(i).getHashName3() != null) {
				hashtag.add(noteList.get(i).getHashName3());
			}
			if (noteList.get(i).getHashName4() != null) {
				hashtag.add(noteList.get(i).getHashName4());
			}
			if (noteList.get(i).getHashName5() != null) {
				hashtag.add(noteList.get(i).getHashName5());
			}
			if (noteList.get(i).getHashName6() != null) {
				hashtag.add(noteList.get(i).getHashName6());
			}
			if (noteList.get(i).getHashName7() != null) {
				hashtag.add(noteList.get(i).getHashName7());
			}
			if (noteList.get(i).getHashName8() != null) {
				hashtag.add(noteList.get(i).getHashName8());
			}
			if (noteList.get(i).getHashName9() != null) {
				hashtag.add(noteList.get(i).getHashName9());
			}
			if (noteList.get(i).getHashName10() != null) {
				hashtag.add(noteList.get(i).getHashName10());
			}
			noteList.get(i).setHashname(hashtag);
			noteList.get(i).setUserNickname(userService.selectUserNickname(noteList.get(i).getUserId()));
			noteList.get(i).setUserImg(userService.selectUserImg(noteList.get(i).getUserId()));
		}

		model.addAttribute("hashtagList", hashtagList);
		model.addAttribute("noteList", noteList);

		return "test/questionPage";
	}

	// 질문페이지 보기
	@RequestMapping("/test/view/{noteId}")
	public String viewNotePage(@PathVariable int noteId, Model model) {

		NoteVO note = noteService.selectNote(noteId);

		if (note.getPageViewState() == 1)
			return "test/error";

		noteService.updateNoteView(noteId);

		ArrayList<String> hashtag = new ArrayList<String>();
		if (note.getHashName1() != null) {
			hashtag.add(note.getHashName1());
		}
		if (note.getHashName2() != null) {
			hashtag.add(note.getHashName2());
		}
		if (note.getHashName3() != null) {
			hashtag.add(note.getHashName3());
		}
		if (note.getHashName4() != null) {
			hashtag.add(note.getHashName4());
		}
		if (note.getHashName5() != null) {
			hashtag.add(note.getHashName5());
		}
		if (note.getHashName6() != null) {
			hashtag.add(note.getHashName6());
		}
		if (note.getHashName7() != null) {
			hashtag.add(note.getHashName7());
		}
		if (note.getHashName8() != null) {
			hashtag.add(note.getHashName8());
		}
		if (note.getHashName9() != null) {
			hashtag.add(note.getHashName9());
		}
		if (note.getHashName10() != null) {
			hashtag.add(note.getHashName10());
		}

		note.setHashname(hashtag);
		note.setUserNickname(userService.selectUserNickname(note.getUserId()));
		note.setUserImg(userService.selectUserImg(note.getUserId()));

		ArrayList<CommentVO> commentList = noteService.selectAllComment(noteId);

		model.addAttribute("note", note);
		model.addAttribute("commentList", commentList);

		return "test/viewPage";
	}

	// 질문페이지 보기
	@ResponseBody
	@RequestMapping("/test/writeComment")
	public String writeComment(@RequestParam int noteId, @RequestParam String comment, Model model,
			HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		if (userId == null)
			return null;

		int userState = userService.selectUserState(userId);

		if (userState != 0)
			return null;

		CommentVO vo = new CommentVO();

		vo.setUserId(userId);
		vo.setNoteId(noteId);
		vo.setComment(comment);

		noteService.insertComment(vo);

		return "SUCCESS";
	}

	// 질문페이지 보기
	@RequestMapping("/test/updateNote/{noteId}")
	public String updateNote(@PathVariable int noteId, Model model, HttpSession session) {

		NoteVO note = noteService.selectNote(noteId);

		if (!session.getAttribute("sid").toString().equals(note.getUserId()))
			return "test/error";

		ArrayList<String> hashtag = new ArrayList<String>();
		if (note.getHashName1() != null) {
			hashtag.add(note.getHashName1());
		}
		if (note.getHashName2() != null) {
			hashtag.add(note.getHashName2());
		}
		if (note.getHashName3() != null) {
			hashtag.add(note.getHashName3());
		}
		if (note.getHashName4() != null) {
			hashtag.add(note.getHashName4());
		}
		if (note.getHashName5() != null) {
			hashtag.add(note.getHashName5());
		}
		if (note.getHashName6() != null) {
			hashtag.add(note.getHashName6());
		}
		if (note.getHashName7() != null) {
			hashtag.add(note.getHashName7());
		}
		if (note.getHashName8() != null) {
			hashtag.add(note.getHashName8());
		}
		if (note.getHashName9() != null) {
			hashtag.add(note.getHashName9());
		}
		if (note.getHashName10() != null) {
			hashtag.add(note.getHashName10());
		}

		note.setHashname(hashtag);
		note.setUserNickname(userService.selectUserNickname(note.getUserId()));
		note.setUserImg(userService.selectUserImg(note.getUserId()));

		model.addAttribute("note", note);

		ArrayList<CategoryVO> categoryList;

		// System.out.println(session.getAttribute("sid"));

		if (session.getAttribute("sid") == null) {
			return "redirect:/test";
		} else if (Integer.parseInt(session.getAttribute("roll").toString()) == 0) {
			categoryList = noteService.selectUserCategory();
		} else {
			categoryList = noteService.selectAllCategory();
		}

		model.addAttribute("categoryList", categoryList);

		return "test/updateNotePage";
	}

	// 질문페이지 보기
	@RequestMapping("/test/deleteNote/{noteId}")
	public String deleteNote(@PathVariable int noteId, HttpSession session) {

		noteService.deleteNote(noteId);

		return "test/questionPage";
	}

	// 자유페이지 보기
	@RequestMapping("/test/talkPage")
	public String viewtalkPage() {
		return "test/talkPage";
	}

	// 뉴스페이지 보기
	@RequestMapping("/test/ITNewsPage")
	public String viewITNewsPage() {
		return "test/ITNewsPage";
	}

	@ResponseBody
	@RequestMapping("/test/getTags")
	public ArrayList<String> getTags() {
		return noteService.selectHashtag();
	}

	@ResponseBody
	@RequestMapping("/test/getCurrentTags")
	public ArrayList<String> getCurrentTags(@RequestParam("noteId") int notdId) {

		NoteVO note = noteService.selectNoteHashtag(notdId);

		ArrayList<String> hashtag = new ArrayList<String>();
		if (note.getHashName1() != null) {
			hashtag.add(note.getHashName1());
		}
		if (note.getHashName2() != null) {
			hashtag.add(note.getHashName2());
		}
		if (note.getHashName3() != null) {
			hashtag.add(note.getHashName3());
		}
		if (note.getHashName4() != null) {
			hashtag.add(note.getHashName4());
		}
		if (note.getHashName5() != null) {
			hashtag.add(note.getHashName5());
		}
		if (note.getHashName6() != null) {
			hashtag.add(note.getHashName6());
		}
		if (note.getHashName7() != null) {
			hashtag.add(note.getHashName7());
		}
		if (note.getHashName8() != null) {
			hashtag.add(note.getHashName8());
		}
		if (note.getHashName9() != null) {
			hashtag.add(note.getHashName9());
		}
		if (note.getHashName10() != null) {
			hashtag.add(note.getHashName10());
		}

		return hashtag;
	}

	// 게시글 작성페이지 보기
	@RequestMapping("/test/writePage")
	public String viewWritePage(Model model, HttpSession session) {

		ArrayList<CategoryVO> categoryList;

		// System.out.println(session.getAttribute("sid"));

		if (session.getAttribute("sid") == null) {
			return "redirect:/test";
		} else if (Integer.parseInt(session.getAttribute("roll").toString()) == 0) {
			categoryList = noteService.selectUserCategory();
		} else {
			categoryList = noteService.selectAllCategory();
		}

		model.addAttribute("categoryList", categoryList);

		return "test/writePage";
	}

	// 게시글 작성 처리
	@ResponseBody
	@RequestMapping("/test/write")
	public String write(@RequestParam("categoryId") int categoryId, @RequestParam("noteTitle") String noteTitle,
			@RequestParam("hashtag[]") ArrayList<String> hashtag, @RequestParam("note") String note,
			HttpSession session) {

		if ((int) session.getAttribute("roll") == 0 && categoryId == 0)
			return "FAIL";

		NoteVO vo = new NoteVO();

		vo.setUserId(session.getAttribute("sid").toString());
		vo.setCategoryId(categoryId);
		vo.setNoteTitle(noteTitle);
		vo.setNote(note);

		if (!hashtag.get(0).equals("null")) {
			if (hashtag.size() > 0)
				vo.setHashName1(hashtag.get(0));
			if (hashtag.size() > 1)
				vo.setHashName2(hashtag.get(1));
			if (hashtag.size() > 2)
				vo.setHashName3(hashtag.get(2));
			if (hashtag.size() > 3)
				vo.setHashName4(hashtag.get(3));
			if (hashtag.size() > 4)
				vo.setHashName5(hashtag.get(4));
			if (hashtag.size() > 5)
				vo.setHashName6(hashtag.get(5));
			if (hashtag.size() > 6)
				vo.setHashName7(hashtag.get(6));
			if (hashtag.size() > 7)
				vo.setHashName8(hashtag.get(7));
			if (hashtag.size() > 8)
				vo.setHashName9(hashtag.get(8));
			if (hashtag.size() > 9)
				vo.setHashName10(hashtag.get(9));
		}

		noteService.InsertNote(vo);

		return "SUCCESS";
	}

	// 게시글 작성 처리
	@ResponseBody
	@RequestMapping("/test/update")
	public String write(@RequestParam("noteId") int noteId, @RequestParam("categoryId") int categoryId,
			@RequestParam("noteTitle") String noteTitle, @RequestParam("hashtag[]") ArrayList<String> hashtag,
			@RequestParam("note") String note, HttpSession session) {

		NoteVO vo = new NoteVO();

		vo.setNoteId(noteId);
		vo.setUserId(session.getAttribute("sid").toString());
		vo.setCategoryId(categoryId);
		vo.setNoteTitle(noteTitle);
		vo.setNote(note);

		if (!hashtag.get(0).equals("null")) {
			if (hashtag.size() > 0)
				vo.setHashName1(hashtag.get(0));
			if (hashtag.size() > 1)
				vo.setHashName2(hashtag.get(1));
			if (hashtag.size() > 2)
				vo.setHashName3(hashtag.get(2));
			if (hashtag.size() > 3)
				vo.setHashName4(hashtag.get(3));
			if (hashtag.size() > 4)
				vo.setHashName5(hashtag.get(4));
			if (hashtag.size() > 5)
				vo.setHashName6(hashtag.get(5));
			if (hashtag.size() > 6)
				vo.setHashName7(hashtag.get(6));
			if (hashtag.size() > 7)
				vo.setHashName8(hashtag.get(7));
			if (hashtag.size() > 8)
				vo.setHashName9(hashtag.get(8));
			if (hashtag.size() > 9)
				vo.setHashName10(hashtag.get(9));
		}

		noteService.updateNote(vo);

		return "SUCCESS";
	}

	@RequestMapping("/test/myPageEditForm")
	public String myPageEditForm(Model model, HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		UserVO userVO = userService.selectUser(userId);

		String[] email = userVO.getUserEmail().split("@");

		userVO.setUserEmail(email[0]);

		model.addAttribute("user", userVO);

		return "test/myPageEdit";
	}

	// 마이페이지 보기
	@RequestMapping("/test/myPage")
	public String viewMyPage(Model model, HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		ArrayList<NoteVO> noteList = noteService.selectUserWriteQuestionNoteList(userId);

		UserVO userVO = userService.selectUser(userId);

		for (int i = 0; i < noteList.size(); i++) {
			ArrayList<String> hashtag = new ArrayList<String>();

			if (noteList.get(i).getHashName1() != null) {
				hashtag.add(noteList.get(i).getHashName1());
			}
			if (noteList.get(i).getHashName2() != null) {
				hashtag.add(noteList.get(i).getHashName2());
			}
			if (noteList.get(i).getHashName3() != null) {
				hashtag.add(noteList.get(i).getHashName3());
			}
			if (noteList.get(i).getHashName4() != null) {
				hashtag.add(noteList.get(i).getHashName4());
			}
			if (noteList.get(i).getHashName5() != null) {
				hashtag.add(noteList.get(i).getHashName5());
			}
			if (noteList.get(i).getHashName6() != null) {
				hashtag.add(noteList.get(i).getHashName6());
			}
			if (noteList.get(i).getHashName7() != null) {
				hashtag.add(noteList.get(i).getHashName7());
			}
			if (noteList.get(i).getHashName8() != null) {
				hashtag.add(noteList.get(i).getHashName8());
			}
			if (noteList.get(i).getHashName9() != null) {
				hashtag.add(noteList.get(i).getHashName9());
			}
			if (noteList.get(i).getHashName10() != null) {
				hashtag.add(noteList.get(i).getHashName10());
			}
			noteList.get(i).setHashname(hashtag);
		}

		model.addAttribute("noteList", noteList);
		model.addAttribute("user", userVO);

		return "test/myPage";
	}

	@ResponseBody
	@RequestMapping("/test/noteLikeCheck")
	public String noteLikeCheck(@RequestParam("noteId") int noteId, HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		if (userId == null)
			return "FALSE";

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("noteId", noteId);
		map.put("userId", userId);

		if (noteService.selectNoteLike(map) > 0) {
			return "TRUE";
		} else {
			return "FALSE";
		}
	}

	@ResponseBody
	@RequestMapping("/test/noteLikeUpdate")
	public String noteLikeCUpdate(@RequestParam("noteId") int noteId, HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		if (userId == null)
			return "FALSE";

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("noteId", noteId);
		map.put("userId", userId);

		if (noteService.selectNoteLike(map) > 0) {
			noteService.deleteNoteLike(map);
			noteService.updateNoteLikeMinus(noteId);
			return "FALSE";
		} else {
			noteService.insertNoteLike(map);
			noteService.updateNoteLikePlus(noteId);
			return "TRUE";
		}
	}

	// 질문페이지 보기
	@ResponseBody
	@RequestMapping("/test/updateComment")
	public String updateComment(@RequestParam int commentId, @RequestParam String comment, HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		if (userId == null)
			return null;

		int userState = userService.selectUserState(userId);

		if (userState != 0)
			return null;

		CommentVO vo = new CommentVO();

		vo.setCommentId(commentId);
		vo.setComment(comment);
		vo.setUserId(userId);

		System.out.println(comment);

		noteService.updateComment(vo);

		return "SUCCESS";
	}

	// 질문페이지 보기
	@ResponseBody
	@RequestMapping("/test/deleteComment")
	public String deleteComment(@RequestParam int commentId, 
			HttpSession session) {

		String userId = session.getAttribute("sid").toString();

		if (userId == null)
			return null;

		int userState = userService.selectUserState(userId);

		if (userState != 0)
			return null;

		CommentVO vo = new CommentVO();

		vo.setCommentId(commentId);
		vo.setUserId(userId);

		noteService.deleteComment(vo);

		return "SUCCESS";
	}

}
