package kh.spring.dto;

import java.sql.Timestamp;

public class ItemDTO {
	private int seq;			// ��ǰ ��ȣ
	private String name;		// ��ǰ �̸�
	private String contents;	// ��ǰ ����
	private String price;
	private String seller;
	private Timestamp date;		// �����
	private String permission;	// ������ �㰡 ����
	private String imagePath;
	
	public ItemDTO() {}
	public ItemDTO(int seq, String name, String contents, String price, String seller, Timestamp date,
			String permission, String imagePath) {
		this.seq = seq;
		this.name = name;
		this.contents = contents;
		this.price = price;
		this.seller = seller;
		this.date = date;
		this.permission = permission;
		this.imagePath = imagePath;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
}
