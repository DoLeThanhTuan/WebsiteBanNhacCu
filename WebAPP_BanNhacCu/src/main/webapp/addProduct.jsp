<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng sản phẩm mới</title>
     <link rel="stylesheet" href="./css/add.css">
</head>
<jsp:useBean id="dm" class="com.BanNhacCu.DAO.DanhMucDAO"></jsp:useBean>
<body>
	<h1 class="title_addPr">Đăng sản phẩm mới</h1>
    <div class="addPd_container">
    	<div id="bg_add">
    		<p>ảnh được tải lên<p>
    	</div>
        <div class="form_add">
        <form action="./themSanPham" method="post" enctype="multipart/form-data" >
            <label for="ten-san-pham">Tên sản phẩm:</label>
            <input type="text" id="ten-san-pham" name="ten-san-pham" required>
            <label for="don-gia">Đơn giá:</label>
            <input type="text" id="don-gia" name="don-gia" required>
            <label for="so-luong">Số lượng:</label>
            <input type="number" id="so-luong" name="so-luong" required>
            <label for="hinh-anh">Hình ảnh:</label>
            <input type="file" id="hinh-anh" name="hinh-anh" required>
            <button type="submit" onclick="uploadImage()">Tải ảnh lên</button>
            <label for="danh-muc">Danh mục:</label>
            <select id="danh-muc" name="danh-muc" required>
                <option value="">Chọn danh mục</option>
				<c:forEach items="${dm.selectAll()}" var="o">
	                <option value="${o.id}">${o.tenDanhMuc}</option>
				</c:forEach>
            </select>
            <label for="mo-ta">Mô tả:</label>
            <textarea id="mo-ta" name="mo-ta" rows="5" required></textarea>
            <div class="addPr_btn">
                <a href="./home"><button type="button">Trở về</button></a>
                <button type="submit">Đăng sản phẩm</button>
            </div>
        </form>
        </div>
    </div>
</body>
<script type="text/javascript">
function uploadImage() {
	  var fileInput = document.getElementById('hinh-anh');
	  var file = fileInput.files[0];
	  var imageType = /image.*/;

	  if (file.type.match(imageType)) {
	    var reader = new FileReader();

	    reader.onload = function(e) {
	      var img = new Image();
	      img.src = reader.result;
	      var imagePreview = document.getElementById('bg_add');
	      imagePreview.innerHTML = '';
	      imagePreview.appendChild(img);
	    }

	    reader.readAsDataURL(file); 
	  }
	  else {
	    alert('Chỉ chấp nhận file hình ảnh');
	  }
	}
</script>
</html>