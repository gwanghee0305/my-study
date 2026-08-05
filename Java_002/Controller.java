package hotel.controller;

import java.util.ArrayList;
import java.util.List;

import hotel.model.Customer;
import hotel.model.Room;

public class Controller {
	private List<Customer> customerList;
	private Room[] roomList;
	
	public Controller() {
		
		customerList = new ArrayList<>();
		
        roomList = new Room[5];
        
        roomList[0] = new Room(101, true);
        roomList[1] = new Room(201, true);
        roomList[2] = new Room(301, true);
        roomList[3] = new Room(401, true);
        roomList[4] = new Room(501, true);
        
        
	}
	
	public Room[] getRoomList() {
		return roomList;
	}

	public void setRoomList(Room[] roomList) {
		this.roomList = roomList;
	}

	public void checkIn(String name, String phone, int roomNo) {
		Customer in = new Customer(); 
		
		in.setName(name);
		in.setPhone(phone);
		in.setRoomNo(roomNo);
		
		customerList.add(in);
	}
	public void checkOut(String name, String phone) {
		
		for(int i = 0; i < customerList.size(); i++) {
			Customer out = customerList.get(i);
			if(out.getName().equals(name) && out.getPhone().equals(phone)) {
				customerList.remove(i);
				break;
			}
		}
	
	}

}
