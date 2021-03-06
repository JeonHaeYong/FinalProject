package kh.spring.dto;

public class PaymentDTO {
	private int seq;
	private int item_seq;
	private String item_name;
	private String item_price;
	private String buyer;
	private String name;
	private String email;
	private String phone;
	private String zipcode;
	private String address1;
	private String address2;
	private String seller;
	private String type;
	private String orderNumber;
	private String pay_date;
	
	
	public PaymentDTO() {}
	public PaymentDTO(int seq, int item_seq, String item_name, String buyer, String name, String email, String phone,
			String zipcode, String address1, String address2, String seller, String type, String orderNumber,
			String pay_date) {
		this.seq = seq;
		this.item_seq = item_seq;
		this.item_name = item_name;
		this.buyer = buyer;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.seller = seller;
		this.type = type;
		this.orderNumber = orderNumber;
		this.pay_date = pay_date;
	}
	
	public PaymentDTO(int seq, int item_seq, String item_name, String item_price, String buyer, String name,
			String email, String phone, String zipcode, String address1, String address2, String seller, String type,
			String orderNumber, String pay_date) {
		this.seq = seq;
		this.item_seq = item_seq;
		this.item_name = item_name;
		this.item_price = item_price;
		this.buyer = buyer;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.seller = seller;
		this.type = type;
		this.orderNumber = orderNumber;
		this.pay_date = pay_date;
	}
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getItem_seq() {
		return item_seq;
	}

	public void setItem_seq(int item_seq) {
		this.item_seq = item_seq;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	
	public String getItem_price() {
		return item_price;
	}

	public void setItem_price(String item_price) {
		this.item_price = item_price;
	}

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	
}
