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
        <title>Loading....</title>
        <!-- <script >
          $(document).ready(function(){
        setTimeout(function(){
          $('#head_loadId').css('display','none');
           }, 12000);
      
      
           $(document).ready(function(){
        setTimeout(function(){
          $('#head_enterId').show();
           }, 12000)});
      </script> -->

        <style>
            * {
                margin: 0;
                outline: none;
                box-sizing: border-box;
            }

            body {
                /* background-color: #292C45; */
                /*background-color: #011015;*/
                background-image: url("https://t3.ftcdn.net/jpg/04/73/60/76/360_F_473607668_T2rnza47el7GR8YPh7KFPE7Ljl6eWPMa.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                font-family: 'Work Sans', sans-serif;
            }
            header{
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px 110px;
                border-bottom: 1px solid #ffffff15;
            }
            .menu ul{
                display: flex;
                list-style: none;
            }
            .menu li a {
                color:#fff;
                text-decoration:none;
                margin: 0 24px;
            }
            .banner{
                display: block;
                text-align:center;
                padding-top:65px;
                margin: auto;
                color:#fff;
            }
            .banner-text{
                display: flex;
                align-items: center;
                justify-content: center;
                margin: auto;
            }
            .banner-text .ring{
                display: block;
                align-items: center;
                justify-content: center;
                margin: auto;
            }
            .banner-text span{
                position: absolute;
                top: 100px;
                left: 100px;
            }
            .banner-text-position{
                position: relative;
                top:-440px;
            }
            .head_lod{
                font-size: 2.6rem;
                font-weight:700;
                opacity: 1;
                color: red;
                stroke-width: 2px;
                z-index: 1;
                stroke: rgb(255, 77, 0);
                font-family: Georgia, 'Times New Roman', Times, serif;
                /*text-shadow: 0 4px 9px #ca0c88;*/

                animation: load 3s linear 0s 4;
            }
            @keyframes load {
                0%{
                    font-size:2rem;
                    font-weight:550;
                    opacity: .9;
                }
                50%{
                    font-size: 1.77rem;
                    font-weight:450;
                    opacity: .3;
                }
                100%{
                    font-size: 2rem;
                    font-weight:550;
                    opacity: .9;
                }
            }


            .ring{
                position: absolute;
                height: 300px;
                width: 300px;
                border-radius: 50%;
                border: 0 solid #292C45;
                z-index: 1;
            }
            .ring:nth-child(1){
                border-bottom-width: 10px;
                border-color: rgb(250, 4, 242);
                animation: rotate1 3s linear 0s 4;
            }
            @keyframes rotate1 {
                0%{
                    transform: rotateX(35deg) rotateY(-45deg) rotateZ(0deg);
                }
                100%{
                    transform: rotateX(35deg) rotateY(-45deg) rotateZ(360deg);
                }
            }
            .ring:nth-child(2){
                border-right-width: 10px;
                border-color: rgb(5, 251, 251);
                animation: rotate2 3s linear 0s 4;
            }
            @keyframes rotate2 {
                0%{
                    transform: rotateX(50deg) rotateY(10deg) rotateZ(0deg);
                }
                100%{
                    transform: rotateX(50deg) rotateY(10deg) rotateZ(360deg);
                }
            }
            .ring:nth-child(3){
                border-top-width: 10px;
                border-color: rgb(4, 252, 4);
                animation: rotate3 3s linear 0s 4;
            }
            @keyframes rotate3 {
                0%{
                    transform: rotateX(10deg) rotateY(55deg) rotateZ(0deg);
                }
                100%{
                    transform: rotateX(10deg) rotateY(55deg) rotateZ(360deg);
                }
            }
            .earth{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .earth-img{
                display: block;
                align-items: center;
                justify-content: center;
                margin: auto;
            }
            .earth-img img{
                position: relative;
                top: 10px;
                width: 800px;
                opacity: .8;
                /*z-index: 1;*/
                background-blend-mode: multiply;
                animation: circle 290s linear infinite;
            }
            .circle{
                width: 756px;
                height: 756px;
                display: inline-block;
                border-radius: 50%;
                border: 1px solid #fff;
                position: absolute;
                top:30px;
                left: 0;
                right: 0;
                margin: 0 auto;
                animation: circle 60s linear 0s infinite;
            }
            @keyframes circle {
                to{
                    transform: rotate(360deg);
                }
            }
            .icon{
                position: absolute;
                width: 100px;
                height: 100px;
                padding: 28px;
                border-radius: 50%;
                border: 1px solid #fff;
                background-color: #292c45;
                z-index: 1;
                transition: all ease 0.5s;
            }

            .icon:hover{
                border-color: #3951e8;
                background-color: #e4f9f4;
                box-shadow: 0 4px 94px #a4fde8;                
                z-index: 1;
            }
            .icon:nth-child(1){
                top: -40px;
                left: 41%;
                z-index: 1;
                background-image: url("https://lh6.googleusercontent.com/Ik23OHg1BglsCwkce71pIkACAZwWu1-y7Jsy_CfvmrNOWSKbQoLaeEJZuKxEq39X86Q=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;
            }
            .icon:nth-child(2){
                top: 70px;
                right: 50px;
                z-index: 1;
                background-image: url("https://lh4.googleusercontent.com/9ZXJfPPz1LF_HsLCcRlaC_ol3328VXBfmrTPP5pxiId8iR6AVaZ8JG_3qXCs2AfifUQ=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;
            }
            .icon:nth-child(3){
                top: 330px;
                right: -50px;
                z-index: 1;
                background-image: url("https://lh6.googleusercontent.com/9SDZ9unSZhtgKUCz1xAwjAYBbYS_X_WPDljUoZjvI5HXdL6fGZKIaisK4c6NJRHvAOc=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;

            }
            .icon:nth-child(4){
                bottom: 60px;
                right: 60px;
                z-index: 1;
                background-image: url("https://lh3.googleusercontent.com/9ADw1PSbtwZWTjp4yTvWt2LA07W2Idto8OCpowbOTGEXhDhwXwR4gyafo0FFN06hnww=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;

            }
            .icon:nth-child(5){
                bottom: -40px;
                right: 41%;
                z-index: 1;
                background-image: url("https://lh4.googleusercontent.com/rX8zYJvINV2r-H6Nkk6Leacyjlf49TbjwCDBCR0BZHG8FpR24ISjNDaA6ZE5FFnt8dQ=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;
            }
            .icon:nth-child(6){
                bottom: 70px;
                left: 45px;
                z-index: 1;
                background-image: url("https://lh6.googleusercontent.com/vAFK1ywElF-5U9SxPJwvhU26icZWAMrR4EOib1g3oMx4UvpDqMwrF5hty6cHrRWVbgU=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;
            }
            .icon:nth-child(7){
                top: 75px;
                left:40px;
                z-index: 1;
                background-image: url("https://lh4.googleusercontent.com/QdPi90kuFgPbCsTOOCJ-G4YdnsulSMca57s-Kj-0toCmhKXmUGeBbdYm8cawo_AXIVI=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s 3;
            }
            .icon:nth-child(8){
                top:330px;
                left: -45px;
                z-index: 1;
                background-image: url("https://lh3.googleusercontent.com/ojAuR3vUYewgoTHVCQDyypf0Qp9MSxDLVONDYv7LI4odtYBRYqGsibWATTrrSHZg80A=w2400");
                background-repeat: no-repeat;
                background-size: cover;
                animation: circle 60s linear 0s infinite;
            }
            .icon span{
                display: block;
                z-index: 1;
                color: whitesmoke;
            }


            .stone{
                position: absolute;
                width: 10px;
                height: 140px;
                background: linear-gradient(to top, #303886, transparent);
                top:100px;
                left: 100px;
                border-radius: 50px;
                opacity: 0;
                animation: stone 5s ease 0s infinite;
            }
            @keyframes stone {
                0%{
                    transform: translateY(-500%);
                    opacity: 1;
                }
                100%{
                    transform: translateY(500%);
                    opacity: .3s;
                }

            }
            .stone:nth-child(2){
                top: -500px;
                left:400px;
            }
            .stone:nth-child(3){
                width: 5px;

                top: 500px;
                left:200px;
                background-image: linear-gradient(to top, #06e1f176, transparent);
                box-shadow: 0 4px 94px #5fe9ddb3;
            }
            .stone:nth-child(4){
                top: 50px;
                right:100px;
                left: inherit;
            }
            .stone:nth-child(5){
                top: 300px;
                right:400px;
                left:inherit;
                background-image: linear-gradient(to top, #52b2f776, transparent);
                box-shadow: 0 4px 94px #70d6cdb3;
            }
            .stone:nth-child(6){
                top: -200px;
                right:170px;
                left: inherit;
            }
            .stone:nth-child(7){
                top: -10;
                left: 45%;
            }
            .stone:nth-child(even){
                background-image: linear-gradient(to top, #3878de, transparent);
                box-shadow: 0 4px 94px #3878de;
            }

            a{
                text-decoration: none;
            }
            #head_enterId{
                position: absolute;
                color: red;
                font-size: 2.8rem;
                font-weight: 700;
                /*text-shadow: 0 4px 9px rgb(242, 224, 26);*/
                font-family: Georgia, 'Times New Roman', Times, serif;
                display: block;
                visibility: hidden;
                z-index: 1;
            }
            #head_enterId:hover{

                cursor: pointer;
            }
            body video{
                position: absolute;
                right: 0;
                bottom: 0;
                /* z-index; */
                video:cover;
            }
            #myVideo {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 100%;
                min-height: 100%;
            }
        </style>
    </head>
    <video autoplay muted loop id="myVideo">
        <source src="https://dsqqu7oxq6o1v.cloudfront.net/preview-2656h4uhmFnorn.mp4" type="video/mp4">
    </video>
    <body>
        <main>

            <div class="banner">
                <div class="aestroid">
                    <div class="stone"></div>
                    <div class="stone"></div>
                    <div class="stone"></div>
                    <div class="stone"></div>
                    <div class="stone"></div>
                    <div class="stone"></div>
                    <div class="stone"></div>
                </div>

                <div class="earth">
                    <div class="earth-img">
                        <img src="https://lh3.googleusercontent.com/nflwD208nszHIQziHYx2BW8XpzhjAuy5z5-c00qtpEO8ldMmrwonU1V6zy_FAp-2uYg=w2400" alt="">

                        <div class="banner-text-position">
                            <div class="banner-text">          
                                <div class="ring"></div>
                                <div class="ring"></div>
                                <div class="ring"></div>
                                <p class="head_lod" id="head_loadId">Loading...</p>
                                <a href="home" id="head_enterId">Enter</a>
                            </div></div>

                    </div>
                    <div class="circle">
                        <div class="icon"></div>
                        <div class="icon"><span class="https://icons8.com/icon/dXHsZAzoUpn5/stack-of-tweets"></span></div>
                        <div class="icon"><span class="https://icons8.com/icon/16713/whatsapp"></span></div>
                        <div class="icon"><span class="https://icons8.com/icon/16713/whatsapp"></span></div>
                        <div class="icon"><span class="https://icons8.com/icon/16713/whatsapp"></span></div>
                        <div class="icon"><span class="https://icons8.com/icon/16713/whatsapp"></span></div>

                        <div class="icon"></div>
                        <div class="icon"></div>
                    </div>
                </div>
            </div>
        </main>

    </body>

    <script type="text/javascript">
        setTimeout(() => {
            let get = document.getElementById('head_loadId');
            get.style.visibility = 'hidden';
        }, 12000);

        setTimeout(() => {
            let get = document.getElementById('head_enterId');
            get.style.visibility = 'visible';
        }, 12000);
    </script>
</html>