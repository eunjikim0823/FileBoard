package com.board;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;


public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDAO {

	//SqlSession sqlsession; ->DI(생성자 or Setter Method를 사용) ->소스코드 절약
	public List list() throws DataAccessException {
		// TODO Auto-generated method stub
		//select ->레코드 한개 ->queryForObject()->selectOne()(Mybatis)
		//select ->레코드 한개이상->queryForList() ->selectList("실행시킬 sql의 id")
		return getSqlSession().selectList("list");
	}


	public int getNewNum() throws DataAccessException {
		// TODO Auto-generated method stub
		//레코드 한개(SelectOne),특정필드의 자료형(Wrapper)
		//형식) selectOne("실행시킬 sql의 id값",매게변수 전달할값 #{매개변수명}
		//Object ->Integer ->int
		return (Integer)getSqlSession().selectOne("getNewNum");//실행할 sql구문
	}

	public void write(BoardDTO boardDTO) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식)sqlSession객체명.insert("실행시킬 sql구문의 id",전달할 매개변수명)
		getSqlSession().insert("write",boardDTO);//getter Method를 호출=>각각 저장

	}

	public void updateReadcnt(String num) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식)sqlSession객체명.update("실행시킬 구문의 id",매개변수)
		getSqlSession().update("updateReadcnt",num);
	}

	public BoardDTO retrieve(String num) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식) sqlSession객체명.selectOne("실행시킬 구문의id",매개변수)
		//Object ->BoardCommand
		return (BoardDTO)getSqlSession().selectOne("retrieve",num);
	}

	public BoardDTO watch(String num) throws DataAccessException {
		// TODO Auto-generated method stub
		return (BoardDTO)getSqlSession().selectOne("watch",num);
	}

	//수정하기
	public void update(BoardDTO boardDTO) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().update("update",boardDTO);//#{title},#{content}...
	}

	//삭제하기
	public void delete(String num) throws DataAccessException {
		//형식)sqlSession객체명.delete("실행구문id",매개변수)
		getSqlSession().delete("delete",num);
	}


	//매개변수없는 전체리스트
	public List getBoardList() throws DataAccessException {
		return getSqlSession().selectList("getBoardList");
	}

	//페이지네이션
	/*
	 * public List getBoardList2(Pagination pagination) throws DataAccessException {
	 * return getSqlSession().selectList("getBoardList2", pagination); }
	 */

	//토탈
	/*
	 * public int getBoardTotalCnt() throws DataAccessException {
	 *
	 * return (Integer)getSqlSession().selectOne("getBoardTotalCnt"); }
	 */


}
