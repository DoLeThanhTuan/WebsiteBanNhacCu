<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <jsp:include page="./Header.jsp"></jsp:include>

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
			        <div class="container" style="margin: 20px;">
			            <div class="row">
			                <div class="categories__slider owl-carousel">
			                    <c:forEach items="${listDM}" var="o">
				                    <div class="col-lg-3">
				                        <div style="background-size: 180px;" class="categories__item set-bg" data-setbg="./img/images/${o.hinhAnh}">
				                            <h5><a href="./home?action=loc&maDanhMuc=${o.id}">${o.tenDanhMuc}</a></h5>
				                        </div>
				                    </div>
			                    </c:forEach>
			                </div>
			            </div>
			        </div>
                 </div>
           	</div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad" style="padding-top: 0">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Danh sách sản phẩm</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class='${maDanhMuc==null?"active":""}'><a  href="./home" style="color: #1c1c1c;">All</a></li>
							<c:forEach items="${listDM}" var="o">
	                            <li class='${maDanhMuc==o.id?"active":""}' ><a style="color: #1c1c1c;" href="./home?action=loc&maDanhMuc=${o.id}">${o.tenDanhMuc}</a></li>
							</c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <c:forEach items="${listSP}" var="o">
	                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat" style="border: 1px solid black;">
	                    <div class="featured__item">
	                        <div style="background-size:auto 200px;" class="featured__item__pic set-bg" data-setbg="./img/images/${o.hinhAnh}">
	                            <ul class="featured__item__pic__hover">
	                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
	                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
	                                <li><a href="cart?action=add&masp=${o.id}"><i class="fa fa-shopping-cart"></i></a></li>
	                            </ul>
	                        </div>
	                        <div class="featured__item__text">
	                            <h6><a style="display: inline-block ; height: 70px;" href="detail?maSanPham=${o.id}">${o.tenSanPham}</a></h6>
	                            <h5>${o.viewDonGia()} VND</h5>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
            </div>
                
                <div style="display: flex; justify-content: center; margin:50px auto;" class="product__pagination">
                        <c:if test="${countPage!=null}">
                        	<a href="./home?action=page&index=1"><i class="fa fa-long-arrow-left"></i></a>
                        </c:if>
                	<c:forEach begin="1" end="${countPage}" var="o">
                        <a style="${index==o?"background: black;":null}" href="./home?action=page&index=${o}">${o}</a>
                	</c:forEach>
                        <c:if test="${countPage!=null}">
                        	<a href="./home?action=page&index=${countPage}"><i class="fa fa-long-arrow-right"></i></a>
                        </c:if>
                </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <jsp:include page="Footer.jsp"></jsp:include>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>