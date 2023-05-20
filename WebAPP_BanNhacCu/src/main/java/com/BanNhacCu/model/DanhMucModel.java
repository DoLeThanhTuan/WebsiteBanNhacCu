package com.BanNhacCu.model;

public class DanhMucModel {
	private int id;
	private String tenDanhMuc;
	private String moTa;
	private String hinhAnh;
	
	public DanhMucModel(int id, String tenDanhMuc, String moTa, String hinhAnh) {
		this.id = id;
		this.tenDanhMuc = tenDanhMuc;
		this.moTa = moTa;
		this.hinhAnh = hinhAnh;
	}
	public DanhMucModel(String tenDanhMuc, String moTa, String hinhAnh) {
		this.tenDanhMuc = tenDanhMuc;
		this.moTa = moTa;
		this.hinhAnh = hinhAnh;
	}
	public DanhMucModel() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}
	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	
}
