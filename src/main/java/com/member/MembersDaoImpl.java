package com.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.member.AdminDTO;
import com.member.MembersDTO;


@Repository
public class MembersDaoImpl implements MembersDAO {

	@Autowired
	public SqlSession sqlSession;


	public int idCheck(MembersDTO members) {
		return sqlSession.selectOne("idCheck",members);
		}


	public void userJoin(MembersDTO members) {
		sqlSession.insert("userJoin",members);
	}


	public MembersDTO getOne(MembersDTO members) {
		return sqlSession.selectOne("getOne",members);
	}


	public MembersDTO getMember(String member_id) {
	     return sqlSession.selectOne("getMember",member_id);
	 }



  	public void updateMember(MembersDTO members) {
	     sqlSession.update("updateMember", members);
	}


	public void deleteMember(MembersDTO members) {
	   sqlSession.delete("deleteMember", members);
	}


	public AdminDTO adminGetOne(AdminDTO admins) {
		return sqlSession.selectOne("adminGetOne",admins);
		}

}
