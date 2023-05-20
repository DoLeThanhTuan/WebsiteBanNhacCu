package com.BanNhacCu.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.BanNhacCu.model.TaiKhoanModel;
import com.BanNhacCu.untils.connectDB;

public class TaiKhoanDAO implements ObjectDAO<TaiKhoanModel>{
	private Connection cnt;
	private PreparedStatement pst;
	private ResultSet rs;
	private int kq = 0;
	public static TaiKhoanDAO getInstance() {
		return new TaiKhoanDAO();
	}
	@Override
	public ArrayList<TaiKhoanModel> selectAll() {
		ArrayList<TaiKhoanModel> list = new ArrayList<>();
		String cauLenh = "select * from TAIKHOAN";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				TaiKhoanModel o = new TaiKhoanModel(rs.getInt("ID"),rs.getString("HOVATEN"),rs.getString("EMAIL"),rs.getString("MATKHAU"),rs.getInt("IDCHUCVU"),rs.getInt("TRANGTHAI"));
				list.add(o);
			}
			this.cnt.close();
			return list;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}

	public TaiKhoanModel selectByEmailAndPassword(String Email,String password) {
		TaiKhoanModel o = null;
		String cauLenh = "select * from TAIKHOAN where email = ? and MATKHAU =?";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setString(1, Email);
			pst.setString(2, password);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				o = new TaiKhoanModel(rs.getInt("ID"),rs.getString("HOVATEN"),rs.getString("EMAIL"),rs.getString("MATKHAU"),rs.getInt("IDCHUCVU"),rs.getInt("TRANGTHAI"));
			}
			this.cnt.close();
			return o;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	public TaiKhoanModel selectByEmail(String Email) {
		TaiKhoanModel o = null;
		String cauLenh = "select * from TAIKHOAN where email = ?";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setString(1, Email);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				o = new TaiKhoanModel(rs.getInt("ID"),rs.getString("HOVATEN"),rs.getString("EMAIL"),rs.getString("MATKHAU"),rs.getInt("IDCHUCVU"),rs.getInt("TRANGTHAI"));
			}
			this.cnt.close();
			return o;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	
	@Override
	public TaiKhoanModel selectById(int id) {
		return null;
	}

	@Override
	public int insert(TaiKhoanModel o) {
		String cauLenh = "INSERT TAIKHOAN(HOVATEN,EMAIL,MATKHAU,IDCHUCVU,TRANGTHAI) VALUES(?,?,?,?,?)";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setString(1, o.getHoVaTen());
			pst.setString(2,o.getEmail());
			pst.setString(3, o.getMatKhau());
			pst.setInt(4, 3);
			pst.setInt(5, o.getTrangThai());
			this.kq = pst.executeUpdate();
			this.cnt.close();
			return kq;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(TaiKhoanModel o) {
		// TODO Auto-generated method stub
		return 0;
	}

}
