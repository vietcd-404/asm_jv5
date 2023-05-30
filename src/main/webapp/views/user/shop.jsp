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
<body >

<%@include file="../layout/header.jsp" %>

<h1>Shop</h1>
<div class="container">
    <div class="row">
        <c:forEach var="list" items="${list}">
            <div class="col-md-3 " style="margin-bottom: 35px">
                <div class="card" style="width: 18rem;">
                   <a href="/user/product/detail/${list.id}"><img src="${list.image}" class="card-img-top"></a>
                        <%--            <img src="../../assets/img/product-01.jpg" class="card-img-top" >--%>
                    <div class="card-body">
                        <h5 class="card-title">${list.name}</h5>
                        <p class="card-text">${list.price}</p>
                        <div style="text-align: center">
                            <a href="#" class="btn btn-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination">

            <li class="page-item">
                <c:if test="${totalPage > 1} ">
                <a href="${pageContext.request.contextPath}/user/product/view?pageNum=${totalPage - 1}"
                   class="page-link">Previous</a>
                </c:if>
            </li>

            <c:forEach begin="1" end="${totalPage}" varStatus="status">
                <li class="page-item">
                    <a href="${pageContext.request.contextPath}/user/product/view?pageNum=${status.index}"
                       class="page-link">${status.index}</a>
                </li>
            </c:forEach>
            <li class="page-item">
                <a href="${pageContext.request.contextPath}/user/product/view?pageNum=${totalPage}"
                   class="page-link">Next</a>
            </li>
        </ul>
    </nav>
</div>
<%@include file="../layout/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

</body>
</html>