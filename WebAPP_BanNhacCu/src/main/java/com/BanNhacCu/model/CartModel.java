package com.BanNhacCu.model;

import java.text.DecimalFormat;
import java.util.ArrayList;

import com.BanNhacCu.DAO.CartDAO;
import com.BanNhacCu.DAO.SanPhamDAO;

public class CartModel {
	private ArrayList<SanPhamModel> listSP = new ArrayList<>();
	private double tongTien;
	private int soLuong;
	public CartModel(ArrayList<SanPhamModel> listSP, double tongTien, int soLuong) {
		this.listSP = listSP;
		this.tongTien = tongTien;
		this.soLuong = soLuong;
	}
	public CartModel() {
	}
	public ArrayList<SanPhamModel> getListSP() {
		return listSP;
	}
	public void setListSP(ArrayList<SanPhamModel> listSP) {
		this.listSP = listSP;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int dem() {
		this.soLuong = 0;
		this.soLuong = this.listSP.size();
		return this.soLuong;
	}
	public double tinhTongTien() {
		this.tongTien = 0;
		for (SanPhamModel sanPhamModel : listSP) {
			this.tongTien += sanPhamModel.getDonGia()*sanPhamModel.getSoLuong();
		}
		return this.tongTien;
	}
	public String viewTinhTongTien() {
		DecimalFormat df = new DecimalFormat("#.####");
		return df.format(Math.round(tinhTongTien()));
	}
	public void add(SanPhamModel sp) {
		this.listSP.add(sp);
	}
	public void plus(SanPhamModel sp,int idTK) {
		for (SanPhamModel sanPhamModel : listSP) {
			if(sp.getId() == sanPhamModel.getId()) {
				sanPhamModel.setSoLuong(sanPhamModel.getSoLuong()+1);
				CartDAO.getInstance().updateSoLuong(idTK, sanPhamModel.getId(), sanPhamModel.getDonGia()*sanPhamModel.getSoLuong(), sanPhamModel.getSoLuong());
				return;
			}
		}
		sp.setSoLuong(1);
		this.listSP.add(sp);
		CartDAO.getInstance().themSP(idTK, sp.getId(), sp.getDonGia(), 1);
 	}
	public void minus(int masp,int idTK) {
		for (SanPhamModel sanPhamModel : listSP) {
			if(sanPhamModel.getId()==masp) {
				if(sanPhamModel.getSoLuong()==1) {
					this.listSP.remove(sanPhamModel);
					CartDAO.getInstance().delete(idTK, masp);
					return;
				}
				else {
					sanPhamModel.setSoLuong(sanPhamModel.getSoLuong()-1);
					CartDAO.getInstance().updateSoLuong(idTK, sanPhamModel.getId(), sanPhamModel.getDonGia()*sanPhamModel.getSoLuong(), sanPhamModel.getSoLuong());
					return;
				}
			}
		}
	}
	public void delete(int masp,int idTK) {
		for (SanPhamModel sanPhamModel : listSP) {
			if(sanPhamModel.getId() == masp) {
				this.listSP.remove(sanPhamModel);
				CartDAO.getInstance().delete(idTK, masp);
				return;
			}
		}
	}
}
