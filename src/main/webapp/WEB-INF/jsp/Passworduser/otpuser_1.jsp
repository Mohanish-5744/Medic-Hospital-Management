<!DOCTYPE html>
<html>
    <head>
        <title>OTP Verification Card Design | Rustcode</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700');
            *{
                border-radius: 0px !important;
                font-family: "Poppins", sans-serif;
            }

            body{
                background-color: #e1e1e1 !important;
                display: flex;
                align-items: center;
                height: 100vh;
            }

            .card{
                border: none !important;
                display: flex;
                align-items: center;
                justify-content: center;
                box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
            }

            .card-header{
                color: white !important;
                background: #3366FF !important;
                text-align: center;
                height: 65vh;
                width: 33VW;
            }

            .card-header > img{
                width: 180px;
            }

            .input-container input{
                width: 40px;
                height: 40px;
            }

            .form-control:focus{
                box-shadow: none !important;
                border: 1px solid #3366FF !important;
            }

            .verify-btn{
                border-radius: 20px !important;
                border: 0px !important;
                width: 140px;
                background-color: #3366FF !important;
            }
            h2{
                color: red;
            }
            

        </style>
    </head>
    <body>
     
        <div class="container d-flex justify-content-center align-items-center">
            <div class="card text-center">
                <div class="card-header p-5">
                    <img src="https://www.iconpacks.net/icons/1/free-smartphone-icon-695-thumb.png">
                    <h5 class="mb-2">OTP VERIFICATION</h5>
                    <div>
                        <small>code has been send to ******@gmail.com</small>
                    </div>
                    <br>
                    <h2>Wrong Input Please Try Again!</h2>
                </div>

                <div class="input-container d-flex justify-content-center mt-2">
                    <form action="otp_1">
                        <input type="text" class="m-1  text-center rounded" maxlength="1" name="a" required="">
                        <input type="text" class="m-1 text-center rounded" maxlength="1" name="b" required="">
                        <input type="text" class="m-1 text-center rounded" maxlength="1" name="c" required="">
                        <input type="text" class="m-1 text-center rounded" maxlength="1" name="d" required="">
                        <input type="text" class="m-1 text-center rounded" maxlength="1" name="e" required="">
                        <input type="text" class="m-1 text-center rounded" maxlength="1" name="f" required="">
                        <button class="btn btn-success px-4 verify-btn">verify</button>
                    </form>
                </div>
                <div>
                    <small>
                        didn't get the otp
                        <a href="userpasswordreset" class="text-decoration-none">Resend</a>
                    </small>
                </div>
                <div class="mt-3 mb-5">

                </div>
            </div>
        </div>
    </body>
</html>

