<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>E Store - eCommerce HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="${pageContext.request.contextPath }/img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/lib/slick/slick.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath }/lib/slick/slick-theme.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <!-- Template Stylesheet -->
        <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
        <style>
		  .disabled-link {
		    pointer-events: none;
		    cursor: default;
		    text-decoration: none;
		    color: inherit;
		  }
</style>
    </head>

    <body>
        <!-- Top bar Start -->
    
        <!-- Top bar End -->
        
        <!-- Nav Bar Start -->
           <jsp:include page="${pageContext.request.contextPath }/views/User/navUser.jsp"></jsp:include>
        <!-- Nav Bar End -->      
        
        <!-- Bottom Bar Start -->
        
        <!-- Bottom Bar End --> 
        
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active">My Account</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- My Account Start -->
        <div class="my-account">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="nav flex-column nav-pills" role="tablist" aria-orientation="vertical">
                           
                            <a class="nav-link" id="orders-nav" data-toggle="pill" href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>Orders</a>
                            <a class="nav-link" id="payment-nav" data-toggle="pill" href="#payment-tab" role="tab"><i class="fa fa-credit-card"></i>Payment Method</a>
                            <a class="nav-link" id="address-nav" data-toggle="pill" href="#address-tab" role="tab"><i class="fa fa-map-marker-alt"></i>address</a>
                            <a class="nav-link" id="account-nav" data-toggle="pill" href="#account-tab" role="tab"><i class="fa fa-user"></i>Account Details</a>
                            <a class="nav-link" id="changepass-nav" data-toggle="pill" href="#changepass-tab" role="tab"><i class="fas fa-fw fa-cog"></i>Change Password</a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out-alt"></i>Logout</a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                          
                            <div class="tab-pane fade" id="orders-tab" role="tabpanel" aria-labelledby="orders-nav">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead class="thead-dark">
                                            <tr>
                                               
                                                <th>Product</th>
                                                <th>Date Order</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listOrder}" var="item">
                                            <tr>
                                              	
                                                <td>${item.product.name }</td>
                                                <td>${item.order.createdate }</td>
                                                <td>${item.product.price }$</td>
                                                <td> <button class="btn btn-danger">${item.status == 0 ? 'Đã Giao' : item.status == 1 ? 'Đang Giao' : 'Chờ Duyệt' }</button> </td>
                                                <td>
                                              <!--   <a href="" class="btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">View</a> -->
                                             	 <a href="${pageContext.request.contextPath}/order-viewid/${item.id}" class="btn"> View</a>
                                             	<a href="${pageContext.request.contextPath}/cancel-order/${item.order.id}"  class="btn ${item.status == 2 ? '' : 'disabled'}"  >Cancel</a>
                                                </td>
                                            								<!-- Modal -->
											<%-- 	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
												  <div class="modal-dialog">
												    <div class="modal-content">
												      <div class="modal-header">
												        <h2 class="modal-title fs-5" id="staticBackdropLabel">Order Product Details</h2>
												        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												      </div>
												      <div class="modal-body">
												      		<h5>Name: ${item.product.name } </h5>
															<h5>Price: ${item.product.price } $</h5>
															<h5>
																size:${item.product.productDetails[0] }
															</h5>
												      </div>
												      <div class="modal-footer">
												        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
												      </div>
												    </div>
												  </div>
												</div> --%>
                            
                                            </tr>
                                         </c:forEach>   
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            

							
                            <div class="tab-pane fade" id="payment-tab" role="tabpanel" aria-labelledby="payment-nav">
                                <h4>Payment Method</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque.
                                </p> 
                            </div>
                            <div class="tab-pane fade" id="address-tab" role="tabpanel" aria-labelledby="address-nav">
                                <h4>Address</h4>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5>Payment Address</h5>
                                        <p>123 Payment Street, Los Angeles, CA</p>
                                        <p>Mobile: 012-345-6789</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>Shipping Address</h5>
                                        <p>123 Shipping Street, Los Angeles, CA</p>
                                        <p>Mobile: 012-345-6789</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="account-tab" role="tabpanel" aria-labelledby="account-nav">
                                <h4>Account Details</h4>
                                  <form:form action="" method="post" modelAttribute="accountUser">
                                <div class="row">
                              
                                    <div class="col-md-6">
                                        <form:input class="form-control" path="username" placeholder="user name"/>
                                    </div>                                 
                                    <div class="col-md-6">
                                        <form:input class="form-control" path="fullname" placeholder="fullname"/>
                                    </div>
                                    <div class="col-md-6">
                                        <form:input class="form-control" path="email" placeholder="email"/>
                                    </div>
                                  
                                    <div class="col-md-12">
                                        <div class="form-check">
										  <form:radiobutton class="form-check-input" path="activated" value="0"/>
										  <label class="form-check-label" for="flexRadioDefault1">
										  ON
										  </label>
										</div>
										<div class="form-check">
										  <form:radiobutton class="form-check-input" path="activated" value="1"/>
										  <label class="form-check-label" for="flexRadioDefault2">
										   OFF
										  </label>
										</div>
                                        <br>
                                    </div>
                                    
                                    <div class="col-md-12">
                                        <button class="btn">Save Changes</button>
                                    </div>
                                   
                                </div>     
                                </form:form>                         
                            </div>
                             <div class="tab-pane fade" id="changepass-tab" role="tabpanel" aria-labelledby="changepass-nav">                         
                                <h4>Password change</h4>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input class="form-control" type="password" placeholder="Current Password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="text" placeholder="New Password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="text" placeholder="Confirm Password">
                                    </div>
                                    <div class="col-md-12">
                                        <button class="btn">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- My Account End -->
        
        <!-- Footer Start -->
      <jsp:include page="${pageContext.request.contextPath }/views/User/footerUser.jsp"></jsp:include> 
        <!-- Footer End -->
        
        <!-- Footer Bottom Start -->
  
        <!-- Footer Bottom End -->       
        
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath }/lib/easing/easing.min.js"></script>
        <script src="${pageContext.request.contextPath }/lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="${pageContext.request.contextPath }/js/main.js"></script>
    </body>
</html>
