<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Sproute - AuctionProductDetail</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>
<script type="text/javascript">
	var message = '${message}';
	if (message != "") {
	   alert(message);
	}
</script>
<style>
img {
  object-fit: cover;
}
</style>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<%@ include file="IncludeTop.jsp" %>
	</nav>
	<br/>
	<center>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S001"/>">
		    유모차 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S002"/>">
		    장난감 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S003"/>">
		    옷 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S004"/>">
		    신발 <img border="0" src="../images/separator.gif" /></a>
		 <a href="<c:url value="/shop/selectProduct?categoryId=sale&productId=S005"/>">
		    모빌</a>
	</center><br/>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
		<%@ include file="IncludeSidebar.jsp" %>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div class="card mt-2">
          <img class="card-img-top img-fluid" src="<c:url value='/upload/${item.imgName}' />" alt="${item.title}">
          <div class="card-body">
            <h3 class="card-title">${item.title}</h3>
            <h4>시작가 : ${item.price} 원</h4>
            <p>판매자 : ${auction.sellerId}</p>
            <p>수량 : ${item.stock}</p>
            <p>경매 참여자 수 : ${auction.participant}</p>
            <p>마감일 : ${auction.deadline}</p>
            <p class="card-text">${item.description}</p>
            <br/>
           	<span style="font-size:15px; color:lightgray">게시일 : ${item.addDate}</span><br/><br/>
            <a href='<c:url value='/shop/addBidForm'><c:param name="itemId" value="${item.itemId}"/>
				</c:url>' class="btn btn-warning">입찰 참여</a>
          </div>
        </div>
        <!-- /.card -->
        

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div><br/><br/><br/><br/>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sproute 2021</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
