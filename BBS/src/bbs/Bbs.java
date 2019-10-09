package bbs;

public class Bbs {
	
	private int bbsID;				//게시글 번호
	private String bbsTitle;		//게시글 제목
	private String userID;			//작성자 아이디
	private String bbsDate;			//작성된 날짜
	private String bbsContent;		//게시글에 글을 담아야하는 오브젝트
	private int bbsAvailable;		//게시글이 삭제되었는지 안되었는지의 정보를 담는 오브젝트
	
	public int getBbsID() {
		return bbsID;
	}
	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public int getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
	
}
