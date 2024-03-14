<%-- 
    Document   : dashboard
    Created on : Mar 10, 2024, 11:27:33 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>QuatBook - User Dashboard</title>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">

        <style>
            .error{
                color:red;
            }
        </style>

    </head>

    <body id="page-top">

        <jsp:include page="../../common/commonUser/navbar.jsp"></jsp:include>

            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../../common/commonUser/sideBar.jsp"></jsp:include>

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                    <jsp:include page="../../common/commonUser/breadCrumb.jsp"></jsp:include>



                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                History Of Shopping
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Image</th>
                                                <th>Quantity</th>
                                                <th>Total money</th>
                                                <th>Buying date</th>
                                                <th>Detail Product</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${oder2}" var="d">
                                            <c:forEach items="${detail}" var="detail">
                                                <c:if test="${detail.orderId == d.id}">
                                                    <c:set var="de" value="${detail}"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:forEach items="${listProduct}" var="product">
                                                <c:if test="${de.productId == product.id}">
                                                    <c:set var="p" value="${product}"/>
                                                </c:if>
                                            </c:forEach>
                                            <tr>
                                                <td>${p.name}</td>
                                                <td>
                                                    <img src="${p.image}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>${de.quantity}</td>
                                                <td>${d.ammount}$</td>
                                                <td>${d.createTime}</td>
                                                <td>
                                                    <form action="detail-product?action=idpro" method="POST">
                                                        <input type="hidden" name="id" value="${d.id}"/>
                                                        <a href="detail-product"><input type="submit" class="btn btn-primary" Value="Detail Product"></a>
                                                    </form>
                                                        
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <jsp:include page="../../common/commonUser/footer.jsp"></jsp:include>


                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->


            <!-- Logout Modal-->
        <jsp:include page="../../common/commonUser/logOutModal.jsp"></jsp:include>


            <!-- Bootstrap core JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor-admin/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/admin/sb-admin.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-bootstrap4-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-dataTables-min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/js/admin/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-dataTables-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/colReorder-bootstrap4-min.js"></script>


    </body>

</html>