package com.BanNhacCu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BanNhacCu.DAO.CartDAO;
import com.BanNhacCu.DAO.TaiKhoanDAO;
import com.BanNhacCu.model.CartModel;
import com.BanNhacCu.model.TaiKhoanModel;
import com.BanNhacCu.untils.check;
@WebServlet(urlPatterns = {"/dang-nhap","/dang-ky","/dang-xuat"})
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String ac = req.getParameter("action");
			if(ac.equals("dangnhap")) {
				String email = req.getParameter("email");
				String password = req.getParameter("password");
				TaiKhoanModel tk = TaiKhoanDAO.getInstance().selectByEmailAndPassword(email, password);
				if(tk == null) {
					req.setAttribute("error", 1);
					req.getRequestDispatcher("./loginAndRegister.jsp").forward(req, resp);
					return;
				}
				req.getSession().setAttribute("tk", tk);
				CartModel cart = CartDAO.getInstance().selectByIdUser(tk.getId());
				req.getSession().setAttribute("cart", cart);
			}
			else if(ac.equals("dangky")) {
				String name = req.getParameter("fullname");
				String email = req.getParameter("email");
				String password = req.getParameter("password");
				String repassword = req.getParameter("repassword");
				if(!check.checkDangKy(email, password, repassword)) {
					req.setAttribute("error", 1);
					req.getRequestDispatcher("./loginAndRegister.jsp").forward(req, resp);
					return;
				}
				TaiKhoanModel tk = new TaiKhoanModel(0, name, email, password, 1, 1);
				TaiKhoanDAO.getInstance().insert(tk);
				req.getSession().setAttribute("tk", tk);
				CartModel cart = CartDAO.getInstance().selectByIdUser(tk.getId());
				req.getSession().setAttribute("cart", cart);
			}
			else if(ac.equals("dangxuat")) {
				req.getSession().removeAttribute("tk");
				req.getSession().removeAttribute("cart");
			}
			resp.sendRedirect("./home");
			
		} catch (Exception e) {
			resp.sendRedirect("loginAndRegister.jsp");
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
