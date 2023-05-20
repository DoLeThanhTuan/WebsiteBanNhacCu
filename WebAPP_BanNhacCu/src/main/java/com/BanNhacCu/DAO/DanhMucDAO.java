package com.BanNhacCu.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.BanNhacCu.model.DanhMucModel;
import com.BanNhacCu.untils.connectDB;

public class DanhMucDAO implements ObjectDAO<DanhMucModel>{
	private Connection cnt;
	private PreparedStatement pst;
	private ResultSet rs;
	private int kq = 0;
	public static DanhMucDAO getInstance() {
		return new DanhMucDAO();
	}
	@Override
	public ArrayList<DanhMucModel> selectAll() {
		ArrayList<DanhMucModel> list = new ArrayList<>();
		String cauLenh = "select * from DANHMUC";
		this.cnt = connectDB.getConnectionSqlServer();
		try {
			PreparedStatement pst = cnt.prepareStatement(cauLenh);
			this.rs = pst.executeQuery();
			while(rs.next()) {
				DanhMucModel o = new DanhMucModel(rs.getInt("ID"),rs.getString("TENDANHMUC"),rs.getString("MOTA"),rs.getString("HINHANH"));
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
	public DanhMucModel selectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(DanhMucModel o) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(DanhMucModel o) {
		// TODO Auto-generated method stub
		return 0;
	}
}
