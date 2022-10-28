package member.dao;

public class MemberVO {
	private String realname;
	private String name;
	private String myemail;
	private int myage;
	
	// getter setter
	
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMyemail() {
		return myemail;
	}
	public void setMyemail(String myemail) {
		this.myemail = myemail;
	}
	public int getMyage() {
		return myage;
	}
	public void setMyage(int myage) {
		this.myage = myage;
	}
}

