<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Xác nhận xoá người dùng ${id}</title>

                <link href="/assets/img/breadlogo.png" rel="icon">
                <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
                    rel="stylesheet" />
                <!-- <link rel="stylesheet" href="/css/demo.css"> -->
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <hr>
                            <div class="d-flex justify-content-between ">
                                <h1>Xoá người dùng có ID = ${id}</h1>

                            </div>
                            <hr />

                            <div class="alert alert-danger" role="alert">
                                Bạn có chắc chắn muốn xoá người dùng này không?
                                <br> <strong>Người dùng này sẽ không thể khôi phục lại được!</strong>
                            </div>

                            <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">
                                <div class="col-12">
                                    <label for="id" class="form-label">ID</label>
                                    <form:input type="text" path="id" class="form-control" readonly="true" />
                                </div>
                                <button class="btn btn-danger">Xác nhận</button>
                            </form:form>


                        </div>
                    </div>
                </div>
            </body>

            </html>