<%-- 
    Document   : checkout
    Created on : Oct 29, 2023, 10:32:01 PM
    Author     : ManhHieuNguyen
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SNEAKERLAND-Check out</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5">

            <div class="container" style="min-height: 1000px">
                <h1>Checkout</h1>


                <div class="row">
                    <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>List Products</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C">
                                    <tr>
                                <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                <th scope="row">${C.value.product.id}</th>
                                <td>${C.value.product.name}</td>
                                <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                <td>${C.value.product.price}</td>
                                <td>${C.value.quantity}</td>
                                <td>${C.value.product.price*C.value.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Total Amount: $${totalMoney}</h3>
                    </div>
                    <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>Information of customer</h3>
                        <form action="checkout" method="POST">
                            <div class="mb-3">
                                <label for="name" class="form-label">Email</label>
                                <input type="email" class="form-control" id="name" name="name" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Vui lòng nhập một địa chỉ email hợp lệ" required>
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" pattern="\d{10}" title="Vui lòng nhập 10 số điện thoại" required>
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var form = document.querySelector('form');
            var emailInput = document.getElementById('name');

            form.addEventListener('submit', function (event) {
                if (!emailInput.checkValidity()) {
                    event.preventDefault();
                    alert('Vui lòng nhập một địa chỉ email hợp lệ.');
                }
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var form = document.querySelector('form');
            var phoneInput = document.getElementById('phone');

            form.addEventListener('submit', function (event) {
                if (!phoneInput.checkValidity()) {
                    event.preventDefault();
                    alert('Vui lòng nhập 10 số điện thoại.');
                }
            });
        });
    </script>

</html>

