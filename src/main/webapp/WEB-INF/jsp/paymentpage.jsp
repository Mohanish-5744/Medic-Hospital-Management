<!--
<%-- 
    Document   : home
    Created on : 19-Jan-2023, 4:30:09 pm
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">


        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Software</title>
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

        <style>
            /*@import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");*/


            body{
                background-color:#f5eee7;
                font-family: "Poppins", sans-serif;
                font-weight: 300;
            }

            .container{
                margin-top: 5vh;

                width: 70vw;
                height: 90vh;
            }

            .card{
                margin-top: 1vh;
                width: 30vw;
                /*height: 50vh;*/
                background-color: #50C878;
                border: none;
            }
            .card1{
                margin-top: 1vh;
                background-color: white;
                border-radius: 7px;
                width: 50vw;
                border: none;
            }

            .card-header {
                padding: .5rem 1rem;
                margin-bottom: 0;
                background-color: rgba(0,0,0,.03);
                border-bottom: none;
            }

            .btn-light:focus {
                background-color: #50C878;
                border-color: #dae0e5;
            }
            .btn-primary{
                /*color: #212529;*/
                background-color: #50C878;
                border-color: #dae0e5;
                /*box-shadow: 0 0 0 0.2rem rgba(216,217,219,.5);*/
            }

            .form-control{

                height: 50px;
                border: 2px solid #eee;
                border-radius: 6px;
                font-size: 14px;
            }

            .form-control:focus {
                color: #495057;
                background-color: #fff;
                border-color: #039be5;
                outline: 0;
                box-shadow: none;

            }

            .input{

                position: relative;
            }

            .input i{

                position: absolute;
                top: 16px;
                left: 11px;
                color: #989898;
            }

            .input input{

                text-indent: 25px;
            }

            .card-text{

                font-size: 13px;
                margin-left: 6px;
            }

            .certificate-text{

                font-size: 12px;
            }


            .billing{
                font-size: 11px;
            }

            .super-price{

                top: 0px;
                font-size: 22px;
            }

            .super-month{

                font-size: 11px;
            }


            .line{
                color: #bfbdbd;
            }

            .free-button{

                background: greenyellow;
                height: 52px;
                font-size: 15px;
                border-radius: 8px;
            }


            .payment-card-body{

                flex: 1 1 auto;
                padding: 24px 1rem !important;

            }
            .h6{
                margin-top: 7px;
                margin-right: 1.5px;
                margin-left: 1.5px;
            }
            .icon{
                /*color:#ccffcc;*/
                background-color: #50C878;
            }

            img {
                position: absolute;
                bottom: 51.9vh;
                right: 20.5vw;
                z-index: 1;
            }
        </style>
    </head>
    <body>

        <div class="container bg-light d-md-flex align-items-center"> 
            <div class="card box1 shadow-sm p-md-5 p-md-5 p-4"> 
                <div class="fw-bolder mb-4">
                    <span class="fas fa-dollar-sign">

                    </span><span class="ps-1">599,00</span>
                </div> <div class="d-flex flex-column"> 
                    <div class="d-flex align-items-center justify-content-between text"> 
                        <span class="">Commission</span> 
                        <span class="fas fa-dollar-sign">
                            <span class="ps-1">1.99</span>

                        </span> 
                    </div> 
                    <div class="d-flex align-items-center justify-content-between text mb-4"> 
                        <span>Total</span> 
                        <span class="fas fa-dollar-sign">
                            <span class="ps-1">600.99</span>

                        </span> </div> <div class="border-bottom mb-4">

                    </div> <div class="d-flex flex-column mb-4"> 
                        <span class="far fa-file-alt text">
                            <span class="ps-2">Invoice ID:</span>

                        </span> <span class="ps-3">SN8478042099</span> 
                    </div> <div class="d-flex flex-column mb-5"> 
                        <span class="far fa-calendar-alt text">
                            <span class="ps-2">Next payment:</span>

                        </span> <span class="ps-3">22 july,2018</span> 
                    </div> <div class="d-flex align-items-center justify-content-between text mt-5"> 
                        <div class="d-flex flex-column text"> <span>Customer Support:</span> 
                            <span>online chat 24/7</span> </div>
                        <div class="btn btn-primary icon rounded-circle">
                            <span class="h6 fas fa-comment-alt"></span>
                        </div> </div> </div> </div> 
            <div class="card1 box2 shadow-sm"> 
                <div class="fixed">
                    <img src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png" width="40px">
                </div>
                <div class="d-flex align-items-center justify-content-between p-md-5 p-4"> 
                    <span class="h5 fw-bold m-0">Payment methods</span> 
                    <div class="btn btn-primary bar"><span class="fas fa-bars">

                        </span></div> </div> <ul class="nav nav-tabs mb-3 px-md-4 px-2"> 
                    <li class="nav-item"> 
                        <a class="nav-link px-2 active" aria-current="page" href="#">Credit Card</a> 
                    </li> <li class="nav-item"> <a class="nav-link px-2" href="#">Mobile Payment</a> 
                    </li> <li class="nav-item ms-auto"> <a class="nav-link px-2" href="#">+ More</a> 
                    </li> </ul> <div class="px-md-5 px-4 mb-4 d-flex align-items-center"> 
                    <div class="btn btn-success me-4 icon"><span class="fas fa-plus"></span>
                    </div> 
                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group"> 
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> 
                        <label class="btn btn-outline-primary" for="btnradio1">
                            <span class="pe-1">+</span>5949</label>
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> 
                        <label class="btn btn-outline-primary" for="btnradio2">
                            <span class="lpe-1">+</span>3894</label> 
                    </div> </div> <form action=""> <div class="row"> 
                        <div class="col-12"> 
                            <div class="d-flex flex-column px-md-5 px-4 mb-4"> 
                                <span>Credit Card</span> <div class="inputWithIcon">
                                    <input class="form-control" type="text" value="5136 1845 5468 3894" > <span class="inputWithIcon"> 
                                </div> </div> </div> <div class="col-md-6"> 
                            <div class="d-flex flex-column ps-md-5 px-md-0 px-4 mb-4"> 
                                <span>Expiration<span class="ps-1">Date</span></span> 
                                <div class="inputWithIcon"> 
                                    <input type="text" class="form-control" value="05/20"> 
                                    <span class="fas fa-calendar-alt"></span> </div> </div> </div> 
                        <div class="col-md-6"> <div class="d-flex flex-column pe-md-5 px-md-0 px-4 mb-4"> 
                                <span>Code CVV</span> <div class="inputWithIcon">
                                    <input type="password" class="form-control" value="123">
                                    <span class="fas fa-lock"></span> </div> </div> </div> 
                        <div class="col-12"> <div class="d-flex flex-column px-md-5 px-4 mb-4">
                                <span>Name</span> <div class="inputWithIcon"> 
                                    <input class="form-control text-uppercase" type="text" value="valdimir berezovkiy"> 
                                    <span class="far fa-user"></span> </div> </div> </div> 
                        <div class="col-12 px-md-5 px-4 mt-3"> 
                            <a href=""><div class="btn btn-success icon w-100">Pay $599.00</div> </a>
                        </div> 
                        <div class="col-12 px-md-5 px-4 mt-3">  
                        </div> 
                        <div class="col-12 px-md-5 px-4 mt-3"> 
                        </div> 
                    </div> 
                </form> 
            </div> 
        </div>

    </body>
</html>-->

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Google Fonts - work Sans -->
        <link rel="hrefhttps://fonts.googleapis.com/css?family=Work+Sans: wght@100;200; 300; 400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <title>Global Warming Disasters Landing Page COncept</title>


    </head>

    <body>
        <button id="rzp-button1">Pay</button>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
            var options = {
                "key": "rzp_test_QyY32ugUd1YaL8", // Enter the Key ID generated from the Dashboard
                "amount": "50000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                "currency": "INR",
                "name": "Acme Corp", //your business name
                "description": "Test Transaction",
                "image": "https://example.com/your_logo",
//                "order_id": "order_9A33XWu170gUtm", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                "callback_url": "https://eneqd3r9zrjok.x.pipedream.net/",
                "prefill": {
                    "name": "Gaurav Kumar", //your customer's name
                    "email": "gaurav.kumar@example.com",
                    "contact": "9000090000"
                },
                "notes": {
                    "address": "Razorpay Corporate Office"
                },
                "theme": {
                    "color": "#3399cc"
                }
            };
            var rzp1 = new Razorpay(options);
            document.getElementById('rzp-button1').onclick = function (e) {
                rzp1.open();
                e.preventDefault();
            }
        </script>

    </body>

</html>