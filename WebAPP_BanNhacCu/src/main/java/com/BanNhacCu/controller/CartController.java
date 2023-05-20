package com.BanNhacCu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BanNhacCu.DAO.CartDAO;
import com.BanNhacCu.DAO.SanPhamDAO;
import com.BanNhacCu.model.CartModel;
import com.BanNhacCu.model.SanPhamModel;
import com.BanNhacCu.model.TaiKhoanModel;
@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getSession().getAttribute("tk")!=null) {
			try {
				String ac = req.getParameter("action");
				TaiKhoanModel tk = (TaiKhoanModel) req.getSession().getAttribute("tk");
				CartModel cart = (CartModel) req.getSession().getAttribute("cart");
				if(ac.equals("add")) {
					int masp = Integer.parseInt(req.getParameter("masp"));
					SanPhamModel sp = SanPhamDAO.getInstance().selectById(masp);
					cart.plus(sp,tk.getId());
				}
				else if(ac.equals("plus")) {
					int masp = Integer.parseInt(req.getParameter("masp"));
					SanPhamModel sp = SanPhamDAO.getInstance().selectById(masp);
					cart.plus(sp, tk.getId());
				}
				else if(ac.equals("minus")) {
					int masp = Integer.parseInt(req.getParameter("masp"));
					cart.minus(masp, tk.getId());;
				}
				else if(ac.equals("delete")) {
					int masp = Integer.parseInt(req.getParameter("masp"));
					cart.delete(masp, tk.getId());
					
				}
				req.getSession().setAttribute("cart", cart);
				resp.sendRedirect("Cart.jsp");
			} catch (Exception e) {
				resp.sendRedirect("Cart.jsp");
			}
		}
		else {
			resp.sendRedirect("loginAndRegister.jsp");
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
