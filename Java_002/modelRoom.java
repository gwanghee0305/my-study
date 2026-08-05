package hotel.model;

public class Room {
	private int roomNo;
	private boolean empty;
	
	
	public Room(int roomNo, boolean empty) {
		this.roomNo = roomNo;
		this.empty = empty;
		
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public boolean isEmpty() {
		return empty;
	}
	public void setEmpty(boolean empty) {
		this.empty = empty;
	}
	@Override
	public String toString() {
		return "Room [roomNo=" + roomNo + ", empty=" + empty + "]";
	}
	
}
