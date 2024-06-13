package friend.dto;

public class FriendDto{
	private int num;
	private String name;
	private String pno;
	
	public FriendDto() {
		
	}
	public FriendDto(int num, String name, String pno) {
		super();
		this.num = num;
		this.name = name;
		this.pno = pno;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	
}