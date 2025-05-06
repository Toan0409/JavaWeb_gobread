<%@ page contentType="text/html" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>GoBread - Món ngon đường phố</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="/assets/img/breadlogo.png" rel="icon">
        <link href="/assets/img/breadlogo.png" rel="apple-touch-icon">

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

        <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
      </head>

      <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

          <div class="d-flex align-items-center justify-content-between">
            <a href="/" class="logo d-flex align-items-center">
              <img src="/assets/img/breadlogo.png" alt="">
              <span class="d-none d-lg-block">GoBread</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
          </div><!-- End Logo -->

          <div class="search-bar">
            <form class="search-form d-flex align-items-center" method="POST" action="#">
              <input type="text" name="query" placeholder="Search" title="Enter search keyword">
              <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
          </div><!-- End Search Bar -->

          <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">

              <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                  <i class="bi bi-search"></i>
                </a>
              </li><!-- End Search Icon-->

              <div class="branch-selector">
                <label for="branch">Chọn cơ sở:</label>
                <select id="branch">
                  <option value="hanoi">Cơ sở Hà Nội</option>
                  <option value="hcm">Cơ sở TP. Hồ Chí Minh</option>
                  <option value="danang">Cơ sở Đà Nẵng</option>
                </select>
              </div>

              <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                  <i class="bi bi-bell"></i>
                  <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                  <li class="dropdown-header">
                    Bạn có 4 thông báo mới
                    <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Xem tất cả</span></a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="notification-item">
                    <i class="bi bi-exclamation-circle text-warning"></i>
                    <div>
                      <h4>Cảnh báo đăng nhập</h4>
                      <p>Phát hiện tài khoản đăng nhập ở nơi khác</p>
                      <p>2 phút trước</p>
                    </div>
                  </li>

                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="notification-item">
                    <i class="bi bi-x-circle text-danger"></i>
                    <div>
                      <h4>Đặt hàng không thành công</h4>
                      <p>Vui lòng điền đầy đủ thông tin đơn hàng</p>
                      <p>1 hr. ago</p>
                    </div>
                  </li>

                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="notification-item">
                    <i class="bi bi-check-circle text-success"></i>
                    <div>
                      <h4>Đặt đơn hàng thành công</h4>
                      <p>Lê Võ Khôi Nguyên vừa nhận thành công đơn hàng</p>
                      <p>2 hrs. ago</p>
                    </div>
                  </li>

                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="notification-item">
                    <i class="bi bi-info-circle text-primary"></i>
                    <div>
                      <h4>Số lượng bánh mì sắp hết </h4>
                      <p>Số lượng bánh mì còn lại trong kho không còn nhiều hãy nhập thêm bánh mì</p>
                      <p>4 hrs. ago</p>
                    </div>
                  </li>

                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li class="dropdown-footer">
                    <a href="#">Hiển thị tất cả thông báo</a>
                  </li>

                </ul><!-- End Notification Dropdown Items -->

              </li><!-- End Notification Nav -->

              <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                  <i class="bi bi-chat-left-text"></i>
                  <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                  <li class="dropdown-header">
                    Bạn có 3 tin nhắn mới
                    <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Xem tất cả</span></a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="message-item">
                    <a href="#">
                      <img src="/assets/img/user1.png" alt="" class="rounded-circle">
                      <div>
                        <h4>Vũ Tùng Dương</h4>
                        <p>Thêm đơn hàng #2024245676</p>
                        <p>Vừa xong</p>
                      </div>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="message-item">
                    <a href="#">
                      <img src="/assets/img/user2.jpg" alt="" class="rounded-circle">
                      <div>
                        <h4>Trần Quốc Toàn</h4>
                        <p>Thêm đơn hàng #202423445</p>
                        <p>6 phút trước</p>
                      </div>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="message-item">
                    <a href="#">
                      <img src="/assets/img/2huychuong.jpg" alt="" class="rounded-circle">
                      <div>
                        <h4>Lê Võ Khôi Nguyên</h4>
                        <p>Thêm đơn hàng #202423346</p>
                        <p>8 phút trước</p>
                      </div>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li class="dropdown-footer">
                    <a href="#">Hiển thị tất cả tin nhắn</a>
                  </li>

                </ul><!-- End Messages Dropdown Items -->

              </li><!-- End Messages Nav -->

              <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                  <img src="/assets/img/user1.png" alt="Profile" class="rounded-circle">
                  <span class="d-none d-md-block dropdown-toggle ps-2">Admin - Nhóm 17</span>
                </a><!-- End Profile Image Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                  <li class="dropdown-header">
                    <h6>Admin</h6>
                    <span>Web Designer</span>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li>
                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                      <i class="bi bi-person"></i>
                      <span>Hồ sơ của tôi</span>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li>
                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                      <i class="bi bi-gear"></i>
                      <span>Cài đặt</span>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li>
                    <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                      <i class="bi bi-question-circle"></i>
                      <span>Trợ giúp</span>
                    </a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

                  <li>
                    <a class="dropdown-item d-flex align-items-center" href="#">
                      <i class="bi bi-box-arrow-right"></i>
                      <span>Đăng xuất</span>
                    </a>
                  </li>

                </ul><!-- End Profile Dropdown Items -->
              </li><!-- End Profile Nav -->

            </ul>
          </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

          <ul class="sidebar-nav" id="sidebar-nav">

            <li class="nav-item">
              <a class="nav-link " href="/">
                <i class="bi bi-grid"></i>
                <span>Doanh thu & Lợi nhuận</span>
              </a>
            </li><!-- End Dashboard Nav -->

            <li class="nav-item">
              <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>Quản lý</span><i class="bi bi-chevron-down ms-auto"></i>
              </a>
              <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                  <a href="/admin/order">
                    <i class="bi bi-cart"></i><span>Quản lý đơn hàng</span>
                  </a>
                </li>
                <li>
                  <a href="/admin/user">
                    <i class="bi bi-person"></i><span>Quản lý khách hàng</span>
                  </a>
                </li>
                <li>
                  <a href="/admin/product">
                    <i class="bi bi-bag"></i><span>Quản lý sản phẩm & tồn kho</span>
                  </a>
                </li>


              </ul>
            </li><!-- End Components Nav -->
            <!--
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Forms</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="forms-elements.html">
              <i class="bi bi-circle"></i><span>Form Elements</span>
            </a>
          </li>
          <li>
            <a href="forms-layouts.html">
              <i class="bi bi-circle"></i><span>Form Layouts</span>
            </a>
          </li>
          <li>
            <a href="forms-editors.html">
              <i class="bi bi-circle"></i><span>Form Editors</span>
            </a>
          </li>
          <li>
            <a href="forms-validation.html">
              <i class="bi bi-circle"></i><span>Form Validation</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->
            <!--
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="tables-general.html">
              <i class="bi bi-circle"></i><span>General Tables</span>
            </a>
          </li>
          <li>
            <a href="tables-data.html">
              <i class="bi bi-circle"></i><span>Data Tables</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->

            <!-- <li class="nav-item">
              <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-bar-chart"></i><span>Biểu đồ</span><i class="bi bi-chevron-down ms-auto"></i>
              </a>
              <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                  <a href="BIEUDO.html">
                    <i class="bi bi-circle"></i><span>Biều đồ doanh thu</span>
                  </a>
                </li>

              </ul>
            </li>End Charts Nav -->
            <!---
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="icons-bootstrap.html">
              <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
            </a>
          </li>
          <li>
            <a href="icons-remix.html">
              <i class="bi bi-circle"></i><span>Remix Icons</span>
            </a>
          </li>
          <li>
            <a href="icons-boxicons.html">
              <i class="bi bi-circle"></i><span>Boxicons</span>
            </a>
          </li>
        </ul>
      </li><!-- End Icons Nav -->

            <li class="nav-heading">Pages</li>

            <li class="nav-item">
              <a class="nav-link collapsed" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>Thông tin</span>
              </a>
            </li><!-- End Profile Page Nav -->



            <li class="nav-item">
              <a class="nav-link collapsed" href="pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>Liên Hệ</span>
              </a>
            </li><!-- End Contact Page Nav -->

            <li class="nav-item">
              <a class="nav-link collapsed" href="/admin/user/create">
                <i class="bi bi-card-list"></i>
                <span>Đăng kí</span>
              </a>
            </li><!-- End Register Page Nav -->

            <li class="nav-item">
              <a class="nav-link collapsed" href="/login">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>Đăng nhập</span>
              </a>
            </li><!-- End Login Page Nav -->



          </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

          <div class="pagetitle">
            <h1>Doanh thu & Lợi nhuận</h1>
            <nav>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                <li class="breadcrumb-item active">Doanh thu & Lợi nhuận</li>
              </ol>
            </nav>
          </div><!-- End Page Title -->

          <section class="section dashboard">
            <div class="row">

              <!-- Left side columns -->
              <div class="col-lg-8">
                <div class="row">

                  <!-- Sales Card -->
                  <div class="col-xxl-4 col-md-6">
                    <div class="card info-card sales-card">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body">
                        <h5 class="card-title">Doanh số <span>| Hôm nay</span></h5>

                        <div class="d-flex align-items-center">
                          <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-cart"></i>
                          </div>
                          <div class="ps-3">
                            <h6>145</h6>
                            <span class="text-success small pt-1 fw-bold">12%</span> <span
                              class="text-muted small pt-2 ps-1">tăng</span>

                          </div>
                        </div>
                      </div>

                    </div>
                  </div><!-- End Sales Card -->

                  <!-- Revenue Card -->
                  <div class="col-xxl-4 col-md-6">
                    <div class="card info-card revenue-card">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body">
                        <h5 class="card-title">Doanh thu <span>| Trong tháng</span></h5>

                        <div class="d-flex align-items-center">
                          <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-currency-dollar"></i>
                          </div>
                          <div class="ps-3">
                            <h6>$3,264</h6>
                            <span class="text-success small pt-1 fw-bold">8%</span> <span
                              class="text-muted small pt-2 ps-1">tăng</span>

                          </div>
                        </div>
                      </div>

                    </div>
                  </div><!-- End Revenue Card -->

                  <!-- Customers Card -->
                  <div class="col-xxl-4 col-xl-12">

                    <div class="card info-card customers-card">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body">
                        <h5 class="card-title">Khách hàng <span>| năm</span></h5>

                        <div class="d-flex align-items-center">
                          <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi bi-people"></i>
                          </div>
                          <div class="ps-3">
                            <h6>1244</h6>
                            <span class="text-danger small pt-1 fw-bold">12%</span> <span
                              class="text-muted small pt-2 ps-1">giảm</span>

                          </div>
                        </div>

                      </div>
                    </div>

                  </div><!-- End Customers Card -->

                  <!-- Reports -->
                  <div class="col-12">
                    <div class="card">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body">
                        <h5 class="card-title">Báo cáo <span>/Hôm nay</span></h5>

                        <!-- Line Chart -->
                        <div id="reportsChart"></div>

                        <script>
                          document.addEventListener("DOMContentLoaded", () => {
                            new ApexCharts(document.querySelector("#reportsChart"), {
                              series: [{
                                name: 'Sales',
                                data: [31, 40, 28, 51, 42, 82, 56],
                              }, {
                                name: 'Revenue',
                                data: [11, 32, 45, 32, 34, 52, 41]
                              }, {
                                name: 'Customers',
                                data: [15, 11, 32, 18, 9, 24, 11]
                              }],
                              chart: {
                                height: 350,
                                type: 'area',
                                toolbar: {
                                  show: false
                                },
                              },
                              markers: {
                                size: 4
                              },
                              colors: ['#4154f1', '#2eca6a', '#ff771d'],
                              fill: {
                                type: "gradient",
                                gradient: {
                                  shadeIntensity: 1,
                                  opacityFrom: 0.3,
                                  opacityTo: 0.4,
                                  stops: [0, 90, 100]
                                }
                              },
                              dataLabels: {
                                enabled: false
                              },
                              stroke: {
                                curve: 'smooth',
                                width: 2
                              },
                              xaxis: {
                                type: 'datetime',
                                categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                              },
                              tooltip: {
                                x: {
                                  format: 'dd/MM/yy HH:mm'
                                },
                              }
                            }).render();
                          });
                        </script>
                        <!-- End Line Chart -->

                      </div>

                    </div>
                  </div><!-- End Reports -->

                  <!-- Recent Sales -->
                  <div class="col-12">
                    <div class="card recent-sales overflow-auto">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body">
                        <h5 class="card-title">Đơn hàng gần đây <span>| Hôm nay</span></h5>

                        <table class="table table-borderless datatable">
                          <thead>
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Khách hàng</th>
                              <th scope="col">Sản phẩm</th>
                              <th scope="col">Giá</th>
                              <th scope="col">Trạng thái</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row"><a href="#">#2457</a></th>
                              <td>Nguyễn Thanh Ngọc</td>
                              <td><a href="#" class="text-primary">Bánh mì cay(Hải Phòng)</a></td>
                              <td>100.000 VND</td>
                              <td><span class="badge bg-success">Đã nhận</span></td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#">#2147</a></th>
                              <td>Trần Quốc Toản</td>
                              <td><a href="#" class="text-primary">Bánh mì cay(Hải Phòng)</a></td>
                              <td>100.000 VND</td>
                              <td><span class="badge bg-warning">Đang xử lý</span></td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#">#2049</a></th>
                              <td>Vũ Tùng Dương</td>
                              <td><a href="#" class="text-primary">Bánh mì chảo</a></td>
                              <td>125.000 VND</td>
                              <td><span class="badge bg-success">Đã nhận</span></td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#">#2644</a></th>
                              <td>Lê Võ Khôi Nguyên</td>
                              <td><a href="#" class="text-primar">Bánh mì xíu mại</a></td>
                              <td>100.000 VND</td>
                              <td><span class="badge bg-danger">Đã huỷ</span></td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#">#2644</a></th>
                              <td>Nguyễn Đình Thường</td>
                              <td><a href="#" class="text-primary">Bánh mì chảo</a></td>
                              <td>125.000 VND</td>
                              <td><span class="badge bg-success">Đã nhận</span></td>
                            </tr>
                          </tbody>
                        </table>

                      </div>

                    </div>
                  </div><!-- End Recent Sales -->

                  <!-- Top Selling -->
                  <div class="col-12">
                    <div class="card top-selling overflow-auto">

                      <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                          <li class="dropdown-header text-start">
                            <h6>Lọc</h6>
                          </li>

                          <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                          <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                          <li><a class="dropdown-item" href="#">Trong năm</a></li>
                        </ul>
                      </div>

                      <div class="card-body pb-0">
                        <h5 class="card-title">Sản phẩm bán chạy <span>| Hôm nay</span></h5>

                        <table class="table table-borderless">
                          <thead>
                            <tr>
                              <th scope="col">Ảnh</th>
                              <th scope="col">Sản phẩm</th>
                              <th scope="col">Giá</th>
                              <th scope="col">Đã bán</th>
                              <th scope="col">Doanh thu</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row"><a href="#"><img src="/assets/img/banhmicay.jpg" alt=""></a></th>
                              <td><a href="#" class="text-primary fw-bold">Bánh mì cay (Hải phòng) </a></td>
                              <td>50.000 VND</td>
                              <td class="fw-bold">120</td>
                              <td>6.000.000 VND</td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#"><img src="/assets/img/banh-mi-bot-loc-da-nang4.jpg"
                                    alt=""></a>
                              </th>
                              <td><a href="#" class="text-primary fw-bold">Bánh mì bột lọc (miền Trung)</a></td>
                              <td>50.000 VND</td>
                              <td class="fw-bold">100</td>
                              <td>5.000.000 VND</td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#"><img src="/assets/img/1628231255-Banh-mi-ga-xe.jpg"
                                    alt=""></a>
                              </th>
                              <td><a href="#" class="text-primary fw-bold">Bánh mì gà xé</a></td>
                              <td>60.000 VND</td>
                              <td class="fw-bold">70</td>
                              <td>4.200.000 VND</td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#"><img src="/assets/img/xiumai.jpg" alt=""></a></th>
                              <td><a href="#" class="text-primary fw-bold">Bánh mì xíu mại</a></td>
                              <td>50.000 VND</td>
                              <td class="fw-bold">60</td>
                              <td>3.000.000 VND</td>
                            </tr>
                            <tr>
                              <th scope="row"><a href="#"><img src="/assets/img/banhmichao.jpg" alt=""></a></th>
                              <td><a href="#" class="text-primary fw-bold">Bánh mì chảo</a></td>
                              <td>40.000 VND</td>
                              <td class="fw-bold">40</td>
                              <td>1.600.000 VND</td>
                            </tr>
                          </tbody>
                        </table>

                      </div>

                    </div>
                  </div><!-- End Top Selling -->

                </div>
              </div><!-- End Left side columns -->

              <!-- Right side columns -->
              <div class="col-lg-4">

                <!-- Recent Activity -->
                <div class="card">
                  <div class="filter">
                    <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                      <li class="dropdown-header text-start">
                        <h6>Lọc</h6>
                      </li>

                      <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                      <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                      <li><a class="dropdown-item" href="#">Trong năm</a></li>
                    </ul>
                  </div>

                  <div class="card-body">
                    <h5 class="card-title">Hoạt động gần đây <span>| Hôm nay</span></h5>

                    <div class="activity">

                      <div class="activity-item d-flex">
                        <div class="activite-label">32 min</div>
                        <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                        <div class="activity-content">
                          Hoàn thành báo cáo doanh số tháng 3
                        </div>
                      </div><!-- End activity item-->

                      <div class="activity-item d-flex">
                        <div class="activite-label">56 min</div>
                        <i class='bi bi-circle-fill activity-badge text-danger align-self-start'></i>
                        <div class="activity-content">
                          Tham gia cuộc họp nhóm về kế hoạch quý 2
                        </div>
                      </div><!-- End activity item-->

                      <div class="activity-item d-flex">
                        <div class="activite-label">2 hrs</div>
                        <i class='bi bi-circle-fill activity-badge text-primary align-self-start'></i>
                        <div class="activity-content">
                          Cập nhật tài liệu hướng dẫn nội bộ
                        </div>
                      </div><!-- End activity item-->

                      <div class="activity-item d-flex">
                        <div class="activite-label">1 day</div>
                        <i class='bi bi-circle-fill activity-badge text-info align-self-start'></i>
                        <div class="activity-content">
                          Kiểm tra và xử lý yêu cầu hỗ trợ kỹ thuật
                        </div>
                      </div><!-- End activity item-->

                      <div class="activity-item d-flex">
                        <div class="activite-label">2 days</div>
                        <i class='bi bi-circle-fill activity-badge text-warning align-self-start'></i>
                        <div class="activity-content">
                          Cập nhật doanh số bán hàng
                        </div>
                      </div><!-- End activity item-->

                      <div class="activity-item d-flex">
                        <div class="activite-label">4 weeks</div>
                        <i class='bi bi-circle-fill activity-badge text-muted align-self-start'></i>
                        <div class="activity-content">
                          Cập nhật giá bán sản phẩm
                        </div>
                      </div><!-- End activity item-->

                    </div>

                  </div>
                </div><!-- End Recent Activity -->

                <!-- Budget Report -->
                <!-- <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Budget Report <span>| This Month</span></h5>

              <div id="budgetChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                    legend: {
                      data: ['Allocated Budget', 'Actual Spending']
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [{
                          name: 'Sales',
                          max: 6500
                        },
                        {
                          name: 'Administration',
                          max: 16000
                        },
                        {
                          name: 'Information Technology',
                          max: 30000
                        },
                        {
                          name: 'Customer Support',
                          max: 38000
                        },
                        {
                          name: 'Development',
                          max: 52000
                        },
                        {
                          name: 'Marketing',
                          max: 25000
                        }
                      ]
                    },
                    series: [{
                      name: 'Budget vs spending',
                      type: 'radar',
                      data: [{
                          value: [4200, 3000, 20000, 35000, 50000, 18000],
                          name: 'Allocated Budget'
                        },
                        {
                          value: [5000, 14000, 28000, 26000, 42000, 21000],
                          name: 'Actual Spending'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div>End Budget Report -->

                <!-- Website Traffic -->
                <!-- <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Website Traffic <span>| Today</span></h5>

              <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: 1048,
                          name: 'Search Engine'
                        },
                        {
                          value: 735,
                          name: 'Direct'
                        },
                        {
                          value: 580,
                          name: 'Email'
                        },
                        {
                          value: 484,
                          name: 'Union Ads'
                        },
                        {
                          value: 300,
                          name: 'Video Ads'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div>End Website Traffic -->

                <!-- News & Updates Traffic -->
                <div class="card">
                  <div class="filter">
                    <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                      <li class="dropdown-header text-start">
                        <h6>Lọc</h6>
                      </li>

                      <li><a class="dropdown-item" href="#">Hôm nay</a></li>
                      <li><a class="dropdown-item" href="#">Trong tháng</a></li>
                      <li><a class="dropdown-item" href="#">Trong năm</a></li>
                    </ul>
                  </div>

                  <div class="card-body pb-0">
                    <h5 class="card-title">Tin tức &amp; Cập nhật <span>| Hôm nay</span></h5>

                    <div class="news">
                      <div class="post-item clearfix">
                        <img src="/assets/img/news-1.jpg" alt="">
                        <h4><a href="#">Giảm giá đặc biệt cho khách hàng thành viên!</a></h4>
                        <p>Từ ngày 25/03, GoBread triển khai chương trình ưu đãi giảm 15% cho khách hàng thành viên khi
                          mua từ
                          3 sản phẩm trở lên. Đừng bỏ lỡ cơ hội này!</p>
                      </div>

                      <div class="post-item clearfix">
                        <img src="/assets/img/news-2.jpg" alt="">
                        <h4><a href="#">Ra mắt sản phẩm mới: Bánh Mì Healthy</a></h4>
                        <p>GoBread chính thức giới thiệu dòng bánh mì healthy mới, ít calo, giàu chất xơ và không chứa
                          đường.
                          Phù hợp cho chế độ ăn lành mạnh!</p>
                      </div>

                      <div class="post-item clearfix">
                        <img src="/assets/img/news-3.jpg" alt="">
                        <h4><a href="#">Cập nhật hệ thống bán hàng trực tuyến</a></h4>
                        <p>Chúng tôi đã nâng cấp hệ thống đặt hàng online, giúp bạn mua sắm nhanh chóng, dễ dàng hơn.
                          Trải
                          nghiệm ngay trên website hoặc ứng dụng!</p>
                      </div>

                      <div class="post-item clearfix">
                        <img src="/assets/img/news-4.jpg" alt="">
                        <h4><a href="#">Báo cáo doanh thu quý 1 & Kế hoạch sắp tới</a></h4>
                        <p> GoBread đã đạt mức tăng trưởng 8% doanh thu trong tháng này. Sắp tới, chúng tôi sẽ mở thêm 2
                          chi
                          nhánh mới để phục vụ khách hàng tốt hơn!</p>
                      </div>

                      <div class="post-item clearfix">
                        <img src="/assets/img/news-5.jpg" alt="">
                        <h4><a href="#">Workshop: Học làm bánh cùng chuyên gia</a></h4>
                        <p>Đăng ký ngay khóa học làm bánh với chuyên gia hàng đầu. Chỉ với 199K, bạn sẽ có trải nghiệm
                          thú vị
                          và mang về những chiếc bánh thơm ngon!</p>
                      </div>

                    </div><!-- End sidebar recent posts-->

                  </div>
                </div><!-- End News & Updates -->

              </div><!-- End Right side columns -->

            </div>
          </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
          <div class="copyright">
            &copy; Copyright <strong><span>GoBread</span></strong>. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
            Designed by <a href="">BootstrapMade</a>
          </div>
        </footer><!-- End Footer -->

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