<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login & Signup Form</title>
    <link rel="stylesheet" href="./css/loginAndRegister.css" />
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
    <section class="wrapper">
    <c:if test="${error==1}">
	    <div class="alert alert-danger" style="text-align: center;">
	    <strong>Lỗi !</strong> Nhập lại
	  	</div>
    </c:if>
      <div class="form login">
        <header>Đăng nhập</header>
        <form action="./dang-nhap?action=dangnhap" method="post">
          <input name="email" type="text" placeholder="Email" required />
          <input name="password" type="password" placeholder="Mật khẩu" required />
          <a href="#">Quên mật khẩu</a>
          <input type="submit" value="Đăng nhập" />
        </form>
      </div>
      
      <div class="form signup">
        <header>Đăng ký</header>
        <form action="./dang-ky?action=dangky" method="post">
          <input name="fullname" type="text" placeholder="Họ và tên" required />
          <input name="email" type="text" placeholder="Email" required />
          <input name="password" type="password" placeholder="Mật khẩu" required />
          <input name="repassword" type="password" placeholder="Nhập lại mật khẩu" required />
          <input type="submit" value="Đăng ký" />
        </form>
      </div>

      <script>
        const wrapper = document.querySelector(".wrapper"),
          loginHeader = document.querySelector(".login header");
          signupHeader = document.querySelector(".signup header"),

        signupHeader.addEventListener("click", () => {
          wrapper.classList.remove("active");
        });
        loginHeader.addEventListener("click", () => {
          wrapper.classList.add("active");
        });
      </script>
    </section>
  </body>
</html>
