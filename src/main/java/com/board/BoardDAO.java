
package com.board;

//List,ArrayList ->글목록보기
//DataAccessException(스프링 전용 예외처리클래스 ->try~catch를 사용x
//예외가 발생ㅇ이 될때 처리를 해준다.
import java.util.List;

import  org.springframework.dao.DataAccessException;

public interface BoardDAO{

	//1.글목록보기
	public List list() throws DataAccessException;

	//2-1.글쓰기 -게시물의 최대값 구하기 ->int
	public int getNewNum() throws DataAccessException;

	//2-2.글쓰기
	public void write(BoardDTO data) throws DataAccessException;
		// TODO Auto-generated method stub

	//3-1.글상세보기-조회수 증가시키기-> update
	public void updateReadcnt(String num) throws DataAccessException;

	//3-2.글 상세보기 -조회수가 증가된 레코드 데이터 담기
	public BoardDTO retrieve(String num) throws DataAccessException;

	//3-2.글 상세보기 -조회수가 증가된 레코드 데이터 담기
	public BoardDTO watch(String num) throws DataAccessException;

	//4.글수정하기
	public void update(BoardDTO data) throws DataAccessException;

	//5.글삭제하기
	public void delete(String num) throws DataAccessException;

}

