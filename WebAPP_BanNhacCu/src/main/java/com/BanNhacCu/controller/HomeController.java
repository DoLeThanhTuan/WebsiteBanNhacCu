package com.BanNhacCu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BanNhacCu.DAO.DanhMucDAO;
import com.BanNhacCu.DAO.SanPhamDAO;
import com.BanNhacCu.DAO.TaiKhoanDAO;
import com.BanNhacCu.model.DanhMucModel;
import com.BanNhacCu.model.SanPhamModel;
import com.BanNhacCu.model.TaiKhoanModel;
import com.BanNhacCu.untils.check;
@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<SanPhamModel> listSP = null;
		int index = 1;
		String ac = "none";
		try {
			ac = req.getParameter("action");
			if(ac.equals("timkiem")) {
				String txt_search = req.getParameter("txt_search");
				listSP = SanPhamDAO.getInstance().searchByName(txt_search);
				req.setAttribute("txt_search", txt_search);
			}
			if(ac.equals("loc")) {
				int maDanhMuc = Integer.parseInt(req.getParameter("maDanhMuc"));
				listSP = SanPhamDAO.getInstance().selectByMaDanhMuc(maDanhMuc);
				req.setAttribute("maDanhMuc", maDanhMuc);
			}
			if(ac.equals("page")) {
				index = Integer.parseInt(req.getParameter("index"));
				listSP = SanPhamDAO.getInstance().selectByPageID(index);
			}
		} catch (Exception e) {
			ac = "none";
		}
		if(listSP == null) {
			listSP = SanPhamDAO.getInstance().selectByPageID(index);
		}
		req.setAttribute("listSP", listSP);
		ArrayList<DanhMucModel> listDM = DanhMucDAO.getInstance().selectAll();
		req.setAttribute("listDM", listDM);
		if(ac.equals("none") || ac.equals("page")) {
			req.setAttribute("countPage",SanPhamDAO.getInstance().countPage());
			req.setAttribute("index", index);
		}
		req.getRequestDispatcher("./trang-chu.jsp").forward(req, resp);
	}
}
