package com.BanNhacCu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BanNhacCu.DAO.SanPhamDAO;
import com.BanNhacCu.model.SanPhamModel;
@WebServlet(urlPatterns = {"/detail"})
public class DetailController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int maSanPham = Integer.parseInt(req.getParameter("maSanPham"));
		SanPhamModel sp = SanPhamDAO.getInstance().selectById(maSanPham);
		req.setAttribute("sp", sp);
		req.getRequestDispatcher("./detail.jsp").forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
