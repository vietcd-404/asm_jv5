<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản lý tài khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="../../css/plugin/bootstrap.min.css" />--%>
<%--    <link rel="stylesheet" href="../../css/custom/index.css" />--%>
<%--    <link rel="stylesheet" href="../../assets/font-we/bootstrap-icons.css" />--%>
<%--    <link rel="stylesheet" href="../../css/custom/stylecopy.css" />--%>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<div class="container mt-3" >
    <form action="" method="post" class="row g-3">
        <div class="col-md-3">
            <label class="form-label">Name</label>
            <input
                    value="${account.name}"
                    name="name"
                    type="text"
                    class="form-control"
                    required
            />

        </div>
        <div class="col-md-3">
            <label class="form-label">Email</label>
            <input
                    value="${account.email}"
                    name="email"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-3">
            <label class="form-label">Username</label>
            <input
                    value="${account.username}"
                    name="username"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-3">
            <label class="form-label">Pass</label>
            <input
                    value="${account.pass}"
                    name="pass"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
            <label class="form-label">Avatar</label>
            <input
                    value="${account.avatar}"
                    name="avatar"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
            <label class="form-label">Role</label>
            <input
                    value="${account.role}"
                    name="role"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-4">
            <label class="form-label">Status</label>
            <input
                    value="${account.status}"
                    name="status"
                    type="text"
                    class="form-control"
                    required
            />
        </div>
        <div class="col-md-12">
            <button formaction="/admin/account/add" type="submit" class="btn btn-primary">Thêm</button>
            <button formaction="/admin/account/update/${account.id}" type="submit" class="btn btn-primary">Sửa</button>
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
                        <td>${sv.email}</td>
                        <td>${sv.username}</td>
                        <td>${sv.pass}</td>
                        <td>${sv.avatar}</td>
                        <td>${sv.role==0?"Admin" : "User"}</td>
                        <td>${sv.status==0?"Hoạt động": "Không hoạt động"}</td>

                        <td><a href="/admin/account/edit/${sv.id}" class="btn btn-warning">
                            Edit </a>
                            <a href="/admin/account/delete/${sv.id}"
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