package com.BanNhacCu.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.jsp.tagext.TryCatchFinally;

import com.BanNhacCu.model.CartModel;
import com.BanNhacCu.model.SanPhamModel;
import com.BanNhacCu.untils.connectDB;

public class CartDAO{
	private Connection cnt;
	private PreparedStatement pst;
	private ResultSet rs;
	private int kq = 0;
	public static CartDAO getInstance() {
		return new CartDAO();
	}
	public CartModel selectByIdUser(int idUser) {
		CartModel cart = new CartModel();
		String cauLenh = "select sp.ID,sp.TENSANPHAM,sp.DONGIA,ct.soLuong,sp.HINHANH,sp.MOTA,sp.MADANHMUC from CHITIETGIOHANG as ct,SANPHAM as sp where idTaiKhoan = ? and ct.idSanPham = sp.ID";
		try {
			this.cnt = connectDB.getConnectionSqlServer();
			pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, idUser);
			rs = pst.executeQuery();
			while(rs.next()) {
				SanPhamModel sp = new SanPhamModel(rs.getInt("ID"),
												rs.getString("TENSANPHAM"),
												rs.getDouble("DONGIA"),
												rs.getInt("soLuong"),
												rs.getString("HINHANH"),
												rs.getString("MOTA"),
												rs.getInt("MADANHMUC"));
				cart.add(sp);
			}
			this.cnt.close();
			return cart;
		} catch (Exception e) {
		}
		return cart;
	}
	public void themSP(int idTK,int idSanPham, double tongTien,int soLuong) {
		String cauLenh = "insert CHITIETGIOHANG(idTaiKhoan,idSanPham,tongTien,soLuong) values(?,?,?,?)";
		cnt = connectDB.getConnectionSqlServer();
		try {
			pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, idTK);
			pst.setInt(2, idSanPham);
			pst.setDouble(3, tongTien);
			pst.setInt(4, soLuong);
			int kq = pst.executeUpdate();
			this.cnt.close();
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
	}

	public void delete(int idTK,int masp) {
		String cauLenh = "delete CHITIETGIOHANG where idTaiKhoan = ? and idSanPham = ?";
		cnt = connectDB.getConnectionSqlServer();
		try {
			pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, idTK);
			pst.setInt(2, masp);
			int kq = pst.executeUpdate();
			this.cnt.close();
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
	}

	
	public void updateSoLuong(int idTK,int idSanPham, double tongTien,int soLuong) {
		String cauLenh = "update CHITIETGIOHANG set soLuong = ?, tongTien = ? where idTaiKhoan = ? and idSanPham = ? ";
		cnt = connectDB.getConnectionSqlServer();
		try {
			pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, soLuong);
			pst.setDouble(2, tongTien);
			pst.setInt(3, idTK);
			pst.setInt(4, idSanPham);
			int kq = pst.executeUpdate();
			this.cnt.close();
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
	}
	
}
