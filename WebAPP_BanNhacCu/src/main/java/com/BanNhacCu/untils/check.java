package com.BanNhacCu.untils;

import com.BanNhacCu.DAO.TaiKhoanDAO;
import com.BanNhacCu.model.TaiKhoanModel;

public class check {
	public static boolean checkDangKy(String email, String password,String repassword) {
		TaiKhoanModel tk = TaiKhoanDAO.getInstance().selectByEmail(email);
		if(tk != null)
			return false;
		if(!password.equals(repassword))
			return false;
		return true;
	}
}
