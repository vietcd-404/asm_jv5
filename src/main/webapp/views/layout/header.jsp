<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<header style="margin-bottom: 200px">--%>
<%--    <!-- <section class="header_1">--%>
<%--      <div class="container">--%>
<%--        <div class="row">--%>
<%--          <div class="col-7">--%>
<%--            <div class="header_1_left">--%>
<%--              <p>viecd245@gmail.com</p>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="col-5">--%>
<%--            <div class="header_1_right">--%>
<%--              <a href="#"><i class="bi bi-facebook"></i></a>--%>
<%--              <a href="#"><i class="bi bi-telegram"></i></a>--%>
<%--              <a href="#"><i class="bi bi-twitter"></i></a>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </section> -->--%>
<%--    <section class="header_2" >--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>

<%--                <div class="col-9">--%>
<%--                    <div class="menu">--%>
<%--                        <ul>--%>

<%--                            <li><a href="/admin/product/view">Product</a></li>--%>
<%--                            <li><a href="/admin/categories/view">Categories</a></li>--%>
<%--                            <li><a href="/admin/account/view">Account</a></li>--%>

<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-1">--%>
<%--                    <div class="menu_right">--%>
<%--                        <div class="row">--%>
<%--                            <!-- <div class="col-4" ng-hide="pro">--%>
<%--                              <a href="#profile"><i class="bi bi-person-lines-fill"></i></i></a>--%>
<%--                            </div> -->--%>

<%--                            <div class="col-4">--%>
<%--                                <div class="dropdown">--%>
<%--                                    <a--%>
<%--                                            class="dropdown-toggle"--%>
<%--                                            href="#"--%>
<%--                                            role="button"--%>
<%--                                            data-bs-toggle="dropdown"--%>
<%--                                            aria-expanded="false"--%>
<%--                                    >--%>
<%--                                        <i class="bi bi-person-circle"></i>--%>
<%--                                    </a>--%>

<%--                                    <ul class="dropdown-menu" ng-hide="all">--%>
<%--                                        <li>--%>
<%--                                            <a--%>
<%--                                                    class="dropdown-item"--%>
<%--                                                    ng-hide="dnhap"--%>
<%--                                                    id="dn"--%>
<%--                                                    href="#login"--%>
<%--                                            >Đăng nhập</a--%>
<%--                                            >--%>
<%--                                        </li>--%>
<%--                                        <!-- <li>--%>
<%--                                          <a--%>
<%--                                            class="dropdown-item"--%>
<%--                                            id="dxx"--%>
<%--                                            ng-click="logout()"--%>
<%--                                            ng-show="dx"--%>
<%--                                            href="#"--%>
<%--                                            >Đăng xuất</a--%>
<%--                                          >--%>
<%--                                        </li> -->--%>

<%--                                        <li>--%>
<%--                                            <a--%>
<%--                                                    class="dropdown-item"--%>
<%--                                                    ng-hide="tt"--%>
<%--                                                    id="theLoai"--%>
<%--                                                    href="#theLoai"--%>
<%--                                            >Thể loại</a--%>
<%--                                            >--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <a--%>
<%--                                                    class="dropdown-item"--%>
<%--                                                    id="sanPham"--%>
<%--                                                    ng-hide="sp"--%>
<%--                                                    href="#qlSanPham"--%>
<%--                                            >Sản phẩm</a--%>
<%--                                            >--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <a class="dropdown-item" href="#profile">Profile</a>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-3" style="margin-left: 9px">--%>
<%--                                <a href="#" id="dangXuat" ng-click="logout()"--%>
<%--                                ><i class="bi bi-box-arrow-right"></i--%>
<%--                                ></a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--</header>--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8"/>
<%--<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">--%>
<%--    <div class="container">--%>
<%--        <div class="container-fluid">--%>

<%--            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"--%>
<%--                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                <span class="navbar-toggler-icon"></span>--%>
<%--            </button>--%>
<%--            <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" aria-current="page" href="/home" style="margin-right: 20px"--%>
<%--                        >Home</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" aria-current="page" href="/user/product/view" style="margin-right: 20px"--%>
<%--                        >Shop</a>--%>
<%--                    </li>--%>
<%--                    <c:if test="${account.role == 0}">--%>
<%--                        <li class="nav-item dropdown">--%>
<%--                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"--%>
<%--                               aria-expanded="false">--%>
<%--                                Manage--%>
<%--                            </a>--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li><a class="dropdown-item" href="/admin/product/view">Product</a></li>--%>
<%--                                <li><a class="dropdown-item" href="/admin/categories/view">Categories</a></li>--%>
<%--                                <li>--%>
<%--                                    <hr class="dropdown-divider">--%>
<%--                                </li>--%>
<%--                                <li><a class="dropdown-item" href="/admin/account/view">Account</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                    </c:if>--%>

<%--                </ul>--%>
<%--                <c:if test="${account.role == 0 || account.role == 1 }">--%>
<%--                    <form class="d-flex" role="search">--%>
<%--                            &lt;%&ndash;                 <p style="margin-right: 20px">Users:${account.name}</p>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                <a class="btn btn-outline-dar nav-link active " href="${pageContext.request.contextPath}/logout">Logout</a>&ndash;%&gt;--%>
<%--                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--&lt;%&ndash;                            <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <p class="nav-link active " style="margin-right: 20px; ">Users: ${account.name}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </li>&ndash;%&gt;--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="btn btn-outline-dar nav-link active " href="${pageContext.request.contextPath}/logout">Logout</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </form>--%>
<%--                </c:if>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>


<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
    <div class="container">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" style="margin-right: 20px">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/user/product/view" style="margin-right: 20px">Shop</a>
                    </li>
                    <c:if test="${account.role == 0}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Manage</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/admin/product/view">Product</a></li>
                                <li><a class="dropdown-item" href="/admin/categories/view">Categories</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="/admin/account/view">Account</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
                <c:if test="${account.role == 0 || account.role == 1}">
                    <form class="d-flex" role="search">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="btn btn-outline-dark nav-link active" href="${pageContext.request.contextPath}/logout">Logout</a>
                            </li>
                        </ul>
                    </form>
                </c:if>
            </div>
        </div>
    </div>
</nav>