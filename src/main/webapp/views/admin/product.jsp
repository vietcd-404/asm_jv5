<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <%--    <link rel="stylesheet" href="../../css/custom/style.css" />--%>
<%--    <link rel="stylesheet" href="../../css/plugin/bootstrap.min.css" />--%>
<%--    <link rel="stylesheet" href="../../css/custom/index.css" />--%>
<%--    <link rel="stylesheet" href="../../assets/font-we/bootstrap-icons.css" />--%>
<%--    <link rel="stylesheet" href="../../css/custom/stylecopy.css" /--%>

</head>

<body>
<%@include file="../layout/header.jsp" %>
<div class="container mt-3" >
    <form action="" method="post" class="row g-3">
        <div class="col-md-3">
            <label class="form-label">Name</label>
            <input
                    value="${product.name}"
                    name="name"
                    type="text"
                    class="form-control"
                    required
            />

        </div>
        <div class="col-md-3">
            <label class="form-label">Brand</label>
            <input
                    value="${product.brand}"
                    name="brand"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-3">
            <label class="form-label">Size</label>
            <input
                    value="${product.size}"
                    name="size"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-3">
            <label class="form-label">Color</label>
            <input
                    value="${product.color}"
                    name="color"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
                <label class="form-label">Categories</label>
                <select class="form-select" id="validationDefault04" name="categories">
                    <c:forEach items="${listCategories}" var="ch">
                        <option value="${ch.id}" ${product.categories.name == ch.name ? "selected" : ""} >${ch.name}</option>
                    </c:forEach>

                </select>
        </div>
        <div class="col-md-4">
            <label class="form-label">Price</label>
            <input
                    value="${product.price}"
                    name="price"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
            <label class="form-label">Status</label>
            <input
                    value="${product.status}"
                    name="status"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-6">
            <label class="form-label">Image</label>
            <input
                    value="${product.image}"
                    name="image"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-6">
            <label class="form-label">Descriptions</label>
            <input
                    value="${product.descriptions}"
                    name="descriptions"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
            <button formaction="/admin/product/add" type="submit" class="btn btn-primary">Thêm</button>
            <button formaction="/admin/product/update/${product.id}" type="submit" class="btn btn-primary">Sửa</button>
        </div>


        <div class="row">
            <table class="table table-hover">
                <thead>
                <tr>

                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Username</th>
                    <th scope="col">Pass</th>
                    <th scope="col">Avatar</th>
                    <th scope="col">Role</th>
                    <th scope="col">Status</th>
                    <th scope="col">Function</th>

                </tr>

                </thead>

                <tbody>
                <c:forEach var="sv" items="${list}">
                    <tr>

                        <td>${sv.name}</td>
                        <td>${sv.brand}</td>
                        <td>${sv.size}</td>
                        <td>${sv.color}</td>
                        <td>${sv.categories.name}</td>
                        <td>${sv.price}</td>
                        <td>${sv.image}</td>
                        <td>${sv.status==0?"Hết": "Còn"}</td>
                        <td>${sv.descriptions}</td>
                        <td><a href="/admin/product/edit/${sv.id}" class="btn btn-warning">
                            Edit </a>
                            <a href="/admin/product/delete/${sv.id}"
                               class="btn btn-danger"> Delete </a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </form>

</div>
<%@include file="../layout/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>