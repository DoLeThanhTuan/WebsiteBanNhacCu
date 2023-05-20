<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>

	<jsp:include page="Header.jsp"></jsp:include>
	
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<div style="width: 250px;">
					<img class="card-img-top mb-5 mb-md-0"
						src="./img/images/${sp.hinhAnh}" alt="..." />
					</div>
				</div>
				<div class="col-md-6">
					<h1 class="display-5 fw-bolder">${sp.tenSanPham}</h1>
					<div class="fs-5 mb-5">
						<span class="text-decoration-line-through">${sp.viewDonGia()} VND</span> <span>${sp.viewDonGiaGiam(0.8)} VND</span>
					</div>
					<p class="lead" style="font-family: Arial, sans-serif;">${sp.moTa}</p>
					<div class="d-flex">
						<button class="btn btn-outline-dark flex-shrink-0" type="button">
							<i class="bi-cart-fill me-1"></i> Thêm vào giỏ hàng
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Footer-->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
