package hotel.model;

public class Customer {
	private String name;
	private String phone;
	private int roomNo;
	
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Customer [name=" + name + ", phone=" + phone + ", roomNo=" + roomNo + "]";
	}
	
	
}
