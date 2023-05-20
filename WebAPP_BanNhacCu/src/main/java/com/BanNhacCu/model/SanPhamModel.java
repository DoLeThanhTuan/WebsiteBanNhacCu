package com.BanNhacCu.model;

import java.text.DecimalFormat;

public class SanPhamModel {
	private int id;
	private String tenSanPham;
	private double donGia;
	private int soLuong;
	private String hinhAnh;
	private String moTa;
	private int maDanhMuc;
	public SanPhamModel(int id, String tenSanPham, double donGia, int soLuong, String hinhAnh, String moTa,
			int maDanhMuc) {
		this.id = id;
		this.tenSanPham = tenSanPham;
		this.donGia = donGia;
		this.soLuong = soLuong;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.maDanhMuc = maDanhMuc;
	}
	public SanPhamModel(String tenSanPham, double donGia, int soLuong, String hinhAnh, String moTa,
			int maDanhMuc) {
		this.tenSanPham = tenSanPham;
		this.donGia = donGia;
		this.soLuong = soLuong;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.maDanhMuc = maDanhMuc;
	}
	public SanPhamModel() {
	}
	public int getId() {
		return id;
	}
	public String getTenSanPham() {
		return tenSanPham;
	}
	public double getDonGia() {
		return donGia;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public String getMoTa() {
		return moTa;
	}
	public int getMaDanhMuc() {
		return maDanhMuc;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public void setDonGia(double donGia) {
		this.donGia = donGia;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public void setMaDanhMuc(int maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}
	public String viewDonGia() {
		DecimalFormat df = new DecimalFormat("#.##########");
		return df.format(this.donGia);
	}
	public String viewDonGiaGiam(float phanTram) {
		DecimalFormat df = new DecimalFormat("#.##########");
		return df.format(Math.ceil(this.donGia*phanTram));
	}
	public String viewTongGia() {
		DecimalFormat df = new DecimalFormat("#.##########");
		return df.format(Math.ceil(this.donGia*this.soLuong));
	}
	
	
		
}
