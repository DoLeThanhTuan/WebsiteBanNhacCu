package com.BanNhacCu.model;

public class TaiKhoanModel {
	private int id;
	private String hoVaTen;
	private String email;
	private String matKhau;
	private int chucVu;
	private int trangThai=1;
	
	
	public TaiKhoanModel() {
	}
	public TaiKhoanModel(int id, String hoVaTen, String email, String matKhau, int chucVu, int trangThai) {
		this.id = id;
		this.hoVaTen = hoVaTen;
		this.email = email;
		this.matKhau = matKhau;
		this.chucVu = chucVu;
		this.trangThai = trangThai;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public int getChucVu() {
		return chucVu;
	}
	public void setChucVu(int chucVu) {
		this.chucVu = chucVu;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	
	
}
