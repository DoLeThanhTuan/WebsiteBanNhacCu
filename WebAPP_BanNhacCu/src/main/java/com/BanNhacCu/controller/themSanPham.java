package com.BanNhacCu.controller;

import java.io.IOException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BanNhacCu.DAO.SanPhamDAO;
import com.BanNhacCu.model.SanPhamModel;
import com.oreilly.servlet.MultipartRequest;
@WebServlet(urlPatterns = {"/themSanPham"})
public class themSanPham extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			ServletContext context = req.getServletContext();
			String realpath = context.getRealPath("/img/images");
			MultipartRequest multi = new MultipartRequest(req, realpath);
			String tensp = multi.getParameter("ten-san-pham");
			double dongia = Double.parseDouble(multi.getParameter("don-gia"));
			int soluong = Integer.parseInt(multi.getParameter("so-luong"));
			String hinhanh = multi.getFilesystemName("hinh-anh");
			int danhmuc = Integer.parseInt(multi.getParameter("danh-muc"));
			String mota = multi.getParameter("mo-ta");
			SanPhamModel sp = new SanPhamModel(tensp, dongia, soluong, hinhanh, mota, danhmuc);
			SanPhamDAO.getInstance().insert(sp);
			resp.sendRedirect("./home");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("./addProduct.jsp").forward(req, resp);
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
