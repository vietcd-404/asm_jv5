<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Quản lý thể loại</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container mt-3">


    <form action="" method="post">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" value="${categoriesList.name}" name="name" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Status</label>
            <input type="text" value="${categoriesList.status}" name="status" class="form-control">
        </div>
<%--        <div class="mb-3">--%>
<%--            <label class="form-label">Address</label>--%>
<%--            <input type="text" value="${list.address}" name="address" class="form-control">--%>
<%--        </div>--%>
        <button formaction="/categories/add" type="submit" class="btn btn-primary">Thêm</button>
        <button formaction="/categories/update/${categoriesList.id}" type="submit" class="btn btn-primary">Sửa</button>
        <div class="row">
            <table class="table table-hover">
                <thead>
                <tr>

                    <th scope="col">Name</th>
                    <th scope="col">Status</th>
                    <th scope="col">Function</th>

                </tr>

                </thead>

                <tbody>
                <c:forEach var="sv" items="${list}">
                    <tr>

                        <td>${sv.name}</td>
                        <td>${sv.status==0?"Hết": "Còn"}</td>

                        <td><a href="/categories/edit/${sv.id}" class="btn btn-warning">
                            Edit </a>
                            <a href="/categories/delete/${sv.id}"
                               class="btn btn-danger"> Delete </a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </form>

</div>

</body>

</html>