<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i>nhaccu@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <c:if test="${sessionScope.tk != null}">
                            <div class="header__top__right__language">
                                <div>Xin chào ${sessionScope.tk.hoVaTen}</div>
                                <span class="arrow_carrot-down"></span>
                                <ul style="width: 140px;">
                                    <li><a href="./dang-xuat?action=dangxuat">Đăng xuất</a></li>
                                    <li><a style="width: 100%;display: block;" href="./addProduct.jsp">Thêm sản phẩm</a></li>
                                </ul>
                            </div>
                            </c:if>
                            <c:if test="${sessionScope.tk == null}">
	                            <div class="header__top__right__auth">
	                                <a href="loginAndRegister.jsp"><i class="fa fa-user"></i>Đăng nhập</a>
	                            </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./home"><img style="max-width:unset ;width: 300px; height: 115px;" src="./images/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./home">Trang chủ</a></li>
                            <li><a href="./cart">Giỏ hàng</a>
                            </li>
                            <li><a href="./contact.html">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="./cart"><i class="fa fa-shopping-bag"></i> <span>${sessionScope.cart!=null?sessionScope.cart.dem():0}</span></a></li>
                        </ul>
                        <div class="header__cart__price">Tổng tiền: <span>${sessionScope.cart!=null?sessionScope.cart.viewTinhTongTien():0} VND</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
        <div class="hero__search" style="margin-left: 29%;">
                        <div class="hero__search__form">
                            <form action="./home" method="get">
                           		<input name="action" type="hidden" value="timkiem">
                                <input name="txt_search" type="text" placeholder="Bạn muốn tìm gì?" value="${txt_search}">
                                <button type="submit" class="site-btn">Tìm kiếm</button>
                            </form>
                        </div>
        </div>
    </header>
    <!-- Header Section End -->
</body>
</html>