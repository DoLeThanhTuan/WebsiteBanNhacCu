package com.BanNhacCu.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.BanNhacCu.model.SanPhamModel;
import com.BanNhacCu.untils.connectDB;

public class SanPhamDAO implements ObjectDAO<SanPhamModel>{
	private Connection cnt;
	private PreparedStatement pst;
	private ResultSet rs;
	private int kq = 0;
	public static SanPhamDAO getInstance() {
		return new SanPhamDAO();
	}
	@Override
	public ArrayList<SanPhamModel> selectAll() {
		ArrayList<SanPhamModel> list = new ArrayList<>();
		String cauLenh = "select * from SanPham";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				SanPhamModel o = new SanPhamModel(
								rs.getInt("ID"),
								rs.getString("TENSANPHAM"),
								rs.getDouble("DONGIA"),
								rs.getInt("SOLUONG"),
								rs.getString("HINHANH"),
								rs.getString("MOTA"),
								rs.getInt("MADANHMUC"));
				list.add(o);
			}
			this.cnt.close();
			return list;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	public ArrayList<SanPhamModel> selectByPageID(int index) {
		ArrayList<SanPhamModel> list = new ArrayList<>();
		String cauLenh = "	select * from (select ROW_NUMBER() over (order by id asc) as r, * from SANPHAM) as x order by x.r offset ? rows Fetch next 8 rows only";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, index*8-8);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				SanPhamModel o = new SanPhamModel(
						rs.getInt("ID"),
						rs.getString("TENSANPHAM"),
						rs.getDouble("DONGIA"),
						rs.getInt("SOLUONG"),
						rs.getString("HINHANH"),
						rs.getString("MOTA"),
						rs.getInt("MADANHMUC"));
				list.add(o);
			}
			this.cnt.close();
			return list;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	public ArrayList<SanPhamModel> searchByName(String txt) {
		ArrayList<SanPhamModel> list = new ArrayList<>();
		String cauLenh = "select * from SanPham where TENSANPHAM like ?";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setString(1, "%"+txt+"%");
			this.rs = pst.executeQuery();
			while(rs.next()) {
				SanPhamModel o = new SanPhamModel(
						rs.getInt("ID"),
						rs.getString("TENSANPHAM"),
						rs.getDouble("DONGIA"),
						rs.getInt("SOLUONG"),
						rs.getString("HINHANH"),
						rs.getString("MOTA"),
						rs.getInt("MADANHMUC"));
				list.add(o);
			}
			this.cnt.close();
			return list;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	public ArrayList<SanPhamModel> selectByMaDanhMuc(int maDanhMuc) {
		ArrayList<SanPhamModel> list = new ArrayList<>();
		String cauLenh = "select * from SanPham where MADANHMUC = ?";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, maDanhMuc);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				SanPhamModel o = new SanPhamModel(
						rs.getInt("ID"),
						rs.getString("TENSANPHAM"),
						rs.getDouble("DONGIA"),
						rs.getInt("SOLUONG"),
						rs.getString("HINHANH"),
						rs.getString("MOTA"),
						rs.getInt("MADANHMUC"));
				list.add(o);
			}
			this.cnt.close();
			return list;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}

	@Override
	public SanPhamModel selectById(int id) {
		SanPhamModel sp = new SanPhamModel();
		String cauLenh = "select * from SanPham where ID = ?";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			pst.setInt(1, id);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				sp = new SanPhamModel(
						rs.getInt("ID"),
						rs.getString("TENSANPHAM"),
						rs.getDouble("DONGIA"),
						rs.getInt("SOLUONG"),
						rs.getString("HINHANH"),
						rs.getString("MOTA"),
						rs.getInt("MADANHMUC"));
			}
			this.cnt.close();
			return sp;
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return null;
	}
	public int countPage() {
		SanPhamModel sp = new SanPhamModel();
		String cauLenh = "select count(*) as c from sanPham";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			this.rs = pst.executeQuery();
			int page = 1;
			while(rs.next()) {
				page = rs.getInt("c");
			}
			this.cnt.close();
			return (int) Math.ceil(page/8.0);
		} catch (Exception e) {
			System.out.println("Lỗi");
		}
		return 1;
	}
	@Override
	public int insert(SanPhamModel o) {
		String cauLenh = "insert SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) values(?,?,?,?,?,?)";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			pst = cnt.prepareStatement(cauLenh);
			pst.setString(1, o.getTenSanPham());
			pst.setDouble(2, o.getDonGia());
			pst.setInt(3, o.getSoLuong());
			pst.setString(4, o.getHinhAnh());
			pst.setString(5, o.getMoTa());
			pst.setInt(6, o.getMaDanhMuc());
			int kq = pst.executeUpdate();
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
	public int update(SanPhamModel o) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
