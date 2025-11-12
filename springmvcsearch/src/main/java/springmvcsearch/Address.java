package springmvcsearch;

public class Address {
	
	private String city;
	private String State;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	@Override
	public String toString() {
		return "Address [city=" + city + ", State=" + State + "]";
	}
	
	
	

}
