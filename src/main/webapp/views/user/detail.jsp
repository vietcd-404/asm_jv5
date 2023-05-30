<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<%@include file="../layout/header.jsp" %>
<div class="row" style="margin: 50px">
    <div class="col-5">
        <img src="${product.image}" class="card-img-top" alt="${product.name}">
    </div>
    <div class="col-7">
        <h1>${product.name}</h1>
        <p>${product.price}</p>
        <p>${product.descriptions}</p>
        <p>Size: ${product.size}</p>
        <p>Color: ${product.color}</p>
        <p>Categories: ${product.categories.name}</p>
        <div style="text-align: center; margin-top: 30px">
            <button type="button" class="btn btn-outline-secondary" style="width: 200px">
                Add to cart
            </button>
        </div>
    </div>
</div>
<%@include file="../layout/footer.jsp" %>
</body>
</html>