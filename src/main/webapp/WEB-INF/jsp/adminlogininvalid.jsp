<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <link rel="stylesheet" href="amey1.css"> -->

        <style>

            @import url('https://rsms.me/inter/inter-ui.css');

            .wrapper {
                width: 850px;
                height: 650px;
                position: relative;
                margin: 3% auto;
                box-shadow: 2px 18px 70px 0px #9D9D9D;
                overflow: hidden;
            }

            .login-text {
                width: 850px;
                height:550px;
                background: linear-gradient(to left, #ab68ca, #de67a3);
                position: absolute;
                top: -400px;
                box-sizing: border-box;
                padding: 6%;
                transition: all 0.6s ease-in-out;
                z-index: 11;
            }


            .text {
                margin-left: 20px;
                color: #fff;
                display: none;
                transition: all 0.5s ease-in-out;
                transition-delay: 0.3s;
            }

            a,a:visited {
                font-size: 36px;
                color: #fff;
                text-decoration: none;
                font-weight: bold;
                display: block;
            }

            hr {
                width: 10%;
                float: left;
                background-color: #fff;
                font-size: 16px;
            }

            input {
                height: 40px;
                width: 98%;
                /*border-radius: 20px;*/
                border: none;
                border-bottom: 2px solid #ccc;
                background-color: #444;
                opacity: 0.6;
                outline: none;
                color: #fff;
                padding: 10px;
                transition: all 0.3s ease;
            }
            input:hover{
                border-bottom: 2px solid #5effff;
                /* linear-gradient(to left, #f167f8, #5effff); */

            }



            button {
                margin-top: 60px;
                height: 40px;
                width: 140px;
                outline: none;
            }


            .input-field ul span{
                color: #fff;
            }


            .cta {
                width: 60px;
                height: 60px;
                border-radius: 50%;
                background: #696a86;
                border: 2px solid #fff;
                position: absolute;
                bottom: -30px;
                left: 370px;
                color: #fff;
                outline: none;
                cursor: pointer;
                z-index: 11;
            }

            .cta span{
                color: wheat;
            }

            .call-text {
                background-color: #fff;
                width: 800px;
                height: 450px;
                position: absolute;
                bottom: 0;
                padding: 10%;
                box-sizing: border-box;
                text-align: center;
            }

            h1{
                font-size: 42px;
                margin-top: 10%;
                color: #696a86;
            }
            span {
                color: #333;
                font-weight: bolder;
            }

            button {
                height: 40px;
                width: 180px;
                border: none;
                border-radius: 20px;
                background: linear-gradient(to left, #ab68ca, #de67a3);
                color: #fff;
                font-weight: bolder;
                margin-top: 30px;
                cursor: pointer;
                outline: none;
            }

            /*            :placeholder
                        {
                            color:white;
                        }*/

            .show-hide {
                display: block;
            }

            .expand {
                transform: translateY(330px);
            }


            ::selection {
                background: #2D2F36;
            }
            ::-webkit-selection {
                background: #2D2F36;
            }
            ::-moz-selection {
                background: #2D2F36;
            }
            body {
                background: white;
                font-family: 'Inter UI', sans-serif;
                margin: 0;
                padding: 20px;
            }
            .page {
                display: flex;
                flex-direction: column;
                height: calc(98% - 20px);
                position: absolute;
                place-content: center;
                width: calc(-50% - 40px);
            }
            @media (max-width: 700px) {
                .page {
                    height: auto;
                    margin-bottom: 20px;
                    padding-bottom: 20px;
                }
            }
            .container {
                display: flex;
                height: 420px;
                margin: 0 auto;
                width: 740px;
            }
            @media (max-width: 767px) {
                .container {
                    flex-direction: column;
                    height: 630px;
                    width: 320px;
                }
            }
            .left {
                background: white;
                height: calc(100% - 40px);
                top: 20px;
                position: relative;
                width: 50%;
            }
            @media (max-width: 767px) {
                .left {
                    height: 100%;
                    left: 20px;
                    width: calc(100% - 40px);
                    max-height: 270px;
                }
            }
            .login {
                color: #474A59;
                font-size: 50px;
                font-weight: 900;
                margin: 50px 40px 40px;
            }
            .eula {
                color: #999;
                font-size: 14px;
                line-height: 1.5;
                margin: 40px;
            }
            .right {
                background: #474A59;
                box-shadow: 0px 0px 40px 16px rgba(0,0,0,0.22);
                color: #F1F1F2;
                position: relative;
                width: 60%;
            }
            @media (max-width: 767px) {
                .right {
                    flex-shrink: 0;
                    height: 100%;
                    width: 100%;
                    max-height: 350px;
                }
            }
            svg {
                position: absolute;
                width: 320px;
            }
            path {
                fill: none;
                stroke: url(#linearGradient);
                stroke-width: 4;
                stroke-dasharray: 240 1386;
            }
            .form {
                margin: 40px;
                position: absolute;
            }



            #submit {
                color: #707075;
                margin-top: 40px;
                transition: color 300ms;
            }
            #submit:focus {
                color: #f2f2f2;
            }
            #submit:active {
                color: #d0d0d2;
            }


            .input-field{
                background-color: #474A59;
                display: flex;
                flex-direction: column;
                flex-wrap: wrap;
                font-size: 1.2rem;
            }
            .input-field ul li{
                list-style-type: none;
                margin-top: 30px;
                margin-right: 20px;
                transition: all 0.5s ease;
            }

            .input-field ul li:hover{
                color: #5effff;
            }

            input{
                margin-top: 5px;
            }

            .input-field span{
                margin-bottom: 0;
            }


            #sign_in{
                width: 10em;
                margin-left: 1em;
                margin-top: 30px;
                height: 1.5em;
                /*box-shadow: 0 1px 12px 3px rgb(128, 243, 209);*/
                background-image: linear-gradient(to right, #f9f954 0%,  #8af9c2  51%, #4cf8de  100%);
                font-style: bold;
                color: black;
                padding: 0;
                font-size: 1.6rem;
                transition: all 0.3s ease;
                cursor: pointer;
            }


            #sign_in:hover{

                font-size: 1.7rem;
                height: 1.6em;
                color:#fff;
                transform: translate(5px,-3px);
                /*box-shadow:1px 2px 18px 3px #4cf8d0;*/
                background-image: linear-gradient(to right, #f997ea,rgb(105, 250, 238));

            }

            .sign_up_1{
                display: inline-block;
                margin: auto;
                width: 20vw;
                font-size: 1.7rem;
                border-radius: 30px;
                background-image: linear-gradient(to right, #f9f954 0%,  #8af9c2  51%, #4cf8de  100%);
                transition: all 0.3s ease;

            }

            .sign_up_1:hover{
                transform: translate(5px,-3px);
                font-size: 1.7rem;
                background-image: linear-gradient(to right, #f997ea,rgb(84, 249, 255));
                box-shadow: 1px 2px 18px 3px #4cf8dea7;

            }
            .invalid {
                color: red;
                font-size: 34px;

                margin: 0px;
            }
            #fgtp{
                display:inline;
                float:right;
                margin-right:10px;
            }

        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="login-text">
                <!-- <button class="cta"><i class="fa-light fa-chevrons-down"></i></button> -->
                <button class="cta"><span class="las la-chevron-down" ></span></button>


                <div class="text">
                    <div class="page">
                        <div class="container">
                            <div class="left">
                                <div class="login">Login</div>
                                <div class="eula">By logging in you agree to the ridiculously long terms that you didn't bother to read</div>

                            </div>
                            <div class="right">
                                <main>


                                    <div class="input-field">
                                        <ul>
                                            <form action="loginformadmin" method="post" >

                                                <li> <span class="lar la-user-circle"></span> Name</label> <input type="text" class="input-button" placeholder="Roman Reings" name="a" required>
                                                <li> <span class="las la-at"></span> Email</label><br><input type="email" class="input-button" placeholder="roaman69@gmail.com" name="b" required><br>
                                                <li> <span class="las la-key"></span> Password</label><br><input type="password" class="input-button" placeholder="Shield@123" name="c" required><br>

                                                    <div class="submit-button">
                                                        <input type="submit" id="sign_in" value="Sign In" name="singin" />

                                                    </div>

                                            </form>                   
                                        </ul>
                                        <a href="adminpasswordreset"><h6 id="fgtp"> Forgot password? </h6></a>
                                    </div>
                                </main>
                            </div>
                        </div>
                    </div>

                </div>
            </div >
            <div id="sign-up-main">

                <div class="call-text">
                    <div  class="invalid"> <b>Invalid Credentials!</b></div>
                    <h1>Show us your <span>creative</span> side</h1>

                    <a href="adminregister"> <div class="sign_up_1">

                            <!-- <input class="submit-field"value="Sign In" name="singin" > -->

                            <span class="submit-field" id="sign_up" value="Sign Up">Sign up </span>
                        </div></a>
                </div>

            </div>
    </body>
    <script type="text/javascript">
        var cta = document.querySelector(".cta");
        var check = 0;

        cta.addEventListener('click', function (e) {
            var text = e.target.nextElementSibling;
            var loginText = e.target.parentElement;
            text.classList.toggle('show-hide');
            loginText.classList.toggle('expand');
            if (check === 0)
            {
                cta.innerHTML = "<i class=\"fas fa-chevron-up\"></i>";
                check++;
            } else
            {
                cta.innerHTML = "<i class=\"fas fa-chevron-down\"></i>";
                check = 0;
            }
        });
    </script>
</html>