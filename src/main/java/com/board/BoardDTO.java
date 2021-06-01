package com.board;


public class BoardDTO { //BoardDTO,BoardVO

	private int num;//게시물번호
	private String id,title,content,sysdate;//작성자,글제목,글내용,작성일
	private int readcnt;//조회수

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSysdate() {
		return sysdate;
	}
	public void setSysdate(String sysdate) {
		this.sysdate = sysdate;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", id=" + id + ", title=" + title
				+ ", content=" + content + ", sysdate=" + sysdate + ", readcnt="
				+ readcnt + " ]";
	}
}
