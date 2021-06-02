package com.board;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class BoardController{

	private Log log = LogFactory.getLog(getClass());


	@Autowired
	BoardDAO boardDAO;



	@RequestMapping(value="Board/board.do", method = RequestMethod.GET)
	public String noticeList(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage,
		    @RequestParam(value="keyField",defaultValue="") String keyField,
		    @RequestParam(value="keyWord",defaultValue="") String keyWord, Model model) {
		if(log.isDebugEnabled()) {
			log.info("BaordController의 boardList()호출됨");
			log.debug("currentPage:"+currentPage);
			log.debug("keyField:"+keyField);
			log.debug("keyWord:"+keyWord);
		}

		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);

		int count=boardDAO.getNewNum();
		log.info(count);
		PagingUtil page=new PagingUtil(keyField, keyWord, currentPage,count,10,3,"list.do");

		map.put("start",page.getStartCount());
		map.put("end", page.getEndCount());

		List<BoardDTO> list=null;
		if(count > 0) {
			list=boardDAO.list();
		}else {
			list=Collections.emptyList();
		}

		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("keyWord", keyWord);
		model.addAttribute("pagingHtml",page.getPagingHtml());
		return "/board/list";
	}

	// 게시물폼
	@RequestMapping(value="Board/write.do", method = RequestMethod.GET)
	public String boardWriteForm() {
		log.info("BoardController의 boardWriteForm()호출됨");
		return "Board/write";
	}

	// 게시물 내용 작성
	@RequestMapping(value="Board/write.do", method = RequestMethod.POST)
	@ResponseBody
	public String write(@ModelAttribute BoardDTO boardDTO) {
		log.info("BoardController의 write()호출됨");

		int newNum=boardDAO.getNewNum()+1;
		boardDTO.setNum(newNum);


		boardDAO.write(boardDTO);
		return "success";
	}
/*
	// By Jay_공지사항 상세페이지로 이동 관련 메서드_20210415
	@RequestMapping(value="notice/details.do", method = RequestMethod.GET)
	public String noticeDetails(@RequestParam int notice_number, Model model) {
		log.info("NoticeController의 noticeDetails()호출됨");
		noticeDAO.updateReadcnt(notice_number);
		NoticeDTO notice = noticeDAO.retrieve(notice_number);
		model.addAttribute("notice", notice);
		return "notice/details";
	}

	// By Jay_공지사항 수정하기 폼으로 이동_20210417
	@RequestMapping(value="notice/update.do", method = RequestMethod.GET)
	public String noticeUpdateForm(@RequestParam("notice_number") int notice_number, Model model) {
		log.info("NoticeController의 noticeUpdateForm()호출됨");
		NoticeDTO notice = noticeDAO.retrieve(notice_number);
		model.addAttribute("notice", notice);
		return "notice/update";
	}

	// By Jay_공지사항 수정하기_20210417
	@RequestMapping(value="notice/update.do", method = RequestMethod.POST)
	@ResponseBody
	public String noticeUpdate(@ModelAttribute NoticeDTO noticeDTO) {
		log.info("NoticeController의 noticeUpdate()호출됨");
		noticeDAO.noticeUpdate(noticeDTO);
		return "success";
	}

	// By Jay_공지사항 삭제하기_20210417
	@RequestMapping(value="notice/delete.do", method = RequestMethod.GET)
	public String noticeDelete(@RequestParam("notice_number") int notice_number) {
		log.info("NoticeController의 noticeDelete()호출됨");
		noticeDAO.noticeDelete(notice_number);
		return "redirect:/notice/list.do";
	}*/
}



