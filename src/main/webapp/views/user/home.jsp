<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <link rel="stylesheet" href="../css/custom/style.css" />--%>
<%--    <link rel="stylesheet" href="../css/plugin/bootstrap.min.css" />--%>
<%--    <link rel="stylesheet" href="../css/custom/index.css" />--%>
<%--    <link rel="stylesheet" href="../assets/font-we/bootstrap-icons.css" />--%>
<%--    <link rel="stylesheet" href="../css/custom/stylecopy.css" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

<%@include file="../layout/header.jsp" %>

<div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="../../assets/img/slide-01.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="../../assets/img/slide-02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="../../assets/img/slide-03.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<%@include file="../layout/footer.jsp" %>
</body>
</html>