<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Cập nhật</title>
                <meta content="" name="description">
                <meta content="" name="keywords">

                <!-- Favicons -->
                <link href="/assets/img/breadlogo.png" rel="icon">
                <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

                <!-- Google Fonts -->
                <link href="https://fonts.gstatic.com" rel="preconnect">
                <link
                    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                    rel="stylesheet">

                <!-- Vendor CSS Files -->
                <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
                <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
                <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
                <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

                <!-- Template Main CSS File -->
                <link href="/assets/css/style.css" rel="stylesheet">
            </head>

            <body>
                <main>
                    <div class="container">
                        <section
                            class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div
                                        class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                                        <div class="d-flex justify-content-center py-4">
                                            <a href="/" class="logo d-flex align-items-center w-auto">
                                                <img src="/assets/img/breadlogo.png" alt="">
                                                <span class="d-none d-lg-block">GoBread</span>
                                            </a>
                                        </div><!-- End Logo -->

                                        <div class="card mb-3">
                                            <div class="card-body">
                                                <div class="pt-4 pb-2">
                                                    <h5 class="card-title text-center pb-0 fs-4">Cập nhật tài khoản</h5>
                                                    <p class="text-center small">Nhập thông tin của bạn để cập nhật tài
                                                        khoản</p>
                                                </div>

                                                <form:form method="post" modelAttribute="newUser"
                                                    action="/admin/user/update" class="row g-3 needs-validation">

                                                    <div class="col-12">
                                                        <label for="id" class="form-label">ID</label>
                                                        <form:input type="text" path="id" class="form-control"
                                                            readonly="true" />
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="fullName" class="form-label">Họ và tên</label>
                                                        <form:input type="text" path="fullName" class="form-control"
                                                            id="fullName" required="true" />
                                                        <div class="invalid-feedback">Vui lòng nhập họ và tên!</div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="email" class="form-label">Email</label>
                                                        <form:input type="email" path="email" class="form-control"
                                                            id="email" required="true" readonly="true" />
                                                        <div class="invalid-feedback">Vui lòng nhập địa chỉ email!</div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="username" class="form-label">Tên đăng nhập</label>
                                                        <div class="input-group has-validation">
                                                            <span class="input-group-text"
                                                                id="inputGroupPrepend">@</span>
                                                            <form:input type="text" path="username" class="form-control"
                                                                id="username" required="true" />
                                                            <div class="invalid-feedback">Không được để trống</div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="phoneNumber" class="form-label">Số điện
                                                            thoại</label>
                                                        <form:input type="text" path="phoneNumber" class="form-control"
                                                            id="phoneNumber" required="true" />
                                                        <div class="invalid-feedback">Không được để trống</div>
                                                    </div>

                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Địa chỉ</label>
                                                        <form:input type="text" path="address" class="form-control"
                                                            id="address" required="true" />
                                                        <div class="invalid-feedback">Không được để trống</div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="form-check">
                                                            <form:checkbox path="terms" class="form-check-input"
                                                                id="acceptTerms" />
                                                            <label class="form-check-label" for="acceptTerms">
                                                                Tôi đồng ý với các <a href="#">điều khoản và điều
                                                                    kiện</a>
                                                            </label>
                                                            <div class="invalid-feedback">Bạn phải đồng ý trước khi cập
                                                                nhật</div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <button class="btn btn-primary w-100" type="submit">Cập nhật tài
                                                            khoản</button>
                                                    </div>
                                                </form:form>

                                            </div>
                                        </div>

                                        <div class="credits">
                                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </main><!-- End #main -->

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Vendor JS Files -->
                <script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
                <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="/assets/vendor/chart.js/chart.umd.js"></script>
                <script src="/assets/vendor/echarts/echarts.min.js"></script>
                <script src="/assets/vendor/quill/quill.js"></script>
                <script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
                <script src="/assets/vendor/tinymce/tinymce.min.js"></script>
                <script src="/assets/vendor/php-email-form/validate.js"></script>

                <!-- Template Main JS File -->
                <script src="/assets/js/main.js"></script>

            </body>

            </html>