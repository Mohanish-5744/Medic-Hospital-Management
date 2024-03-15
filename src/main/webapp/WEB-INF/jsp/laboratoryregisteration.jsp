<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Software</title>
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <link rel="stylesheet" href="admin.css"> -->

        <style>
            /* @import url('https://');
            */


            :root{
                --main-color: #DD2F6E;
                --color-dark: #1D2231;
                --text-grey: #8390A2;

            }
            *{
                padding:0;
                margin:0;
                box-sizing:border-box;
                list-style-type:none;
                text-decoration: none;
                font-family: 'Poppins', sans-serif;
            }

            .sidebar{
                width: 345px;
                position: fixed;
                left: 0;
                top:0;
                height: 900px;
                background:var(--main-color) ;
                z-index: 100;
                transition: all 0.3s ease;
            }

            .sidebar-brand span{
                display:inline-block;
                padding-right: 1rem;
            }

            .sidebar-menu li
            {
                width: 100%;
                margin-bottom: 1.3rem;
            }

            .sidebar-menu a{
                padding-left: 1rem;
                display: block;
                color:#fff;
                font-size: 1.1rem;
            }
            .sidebar-menu a:hover{
                color: var(--main-color);
                background-color: #fff;
                border-radius: 30px 0px 0px 30px;
                padding-top:1rem;
            }

            .sidebar-brand{
                height: 90px;
                padding-left: 1rem 1rem 1rem 2rem;
                color:#fff;
            }

            .sidebar-brand h2{
                padding-top: 1.2rem;
                padding-left:1.5rem;
            }


            .sidebar-menu a span:first-child{
                font-size: 1.5rem;
                padding-right: 1rem;
                transition: 0.3s;
            }


            .sidebar-menu a.active:hover{
                color: var(--main-color);
                background-color: #fff;
                border-radius: 30px 0px 0px 30px;
                padding-top:1rem;
            }

            .sidebar-menu a.active{
                background: var(--main-color);
                padding-top:1rem;
                color:#fff;
                border-radius: 30px 0px 0px 30px;
            }
            .main-content{
                margin-left: 345px;
                transition: all 0.6s ease;
            }


            header {

                display: flex;
                justify-content: space-between;
                padding: 1rem 1.5rem;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
                position: fixed;
                left: 345px;
                width:calc(100% - 354px);
                top:0;
                z-index: 100;
                transition: all 0.3s ease;
            }
            header h2{
                color: #222;
            }

            header label span{
                font-size: 1.7rem;
                padding-right: 1rem;

            }


            .sidebar-menu{
                margin-top: 1rem;
            }
            .search-wrapper {
                border:1px solid #ccc;
                /* border:1px solid #1fbfb8; */

                border-radius: 30px;
                height: 50px;
                display: flex;
                align-items: center;
                overflow-x: hidden;
                transition: 0.3s;

            }
            .search-wrapper:hover{
                box-shadow: 4px 3px 3px 0 rgba(109, 106, 106, 0.3);
            }
            .search-wrapper span{
                display: inline-block;
                padding: 0rem 1rem;
                font-size: 1.6rem;
            }

            .search-wrapper input{
                height: 100%;
                padding: .5rem;
                outline: none;
                border: none;
            }

            .user-wrapper{
                display: flex;
                align-items: center;

            }

            .user-wrapper img{
                border-radius: 50%;
                margin-right: 1rem;
            }


            .user-wrapper small{
                display: inline-block;
                color:var(--text-grey);
                margin-top: -3px ;
            }

            main{
                margin-top: 85px;
                padding: 2rem 1.5rem;
                background: #f1f5f9;
                min-height: calc(100vh -90px);
            }

            .cards{
                /* display: grid; */
                display: inline-flex;
                margin-top: 20px;
                left: 300px;
                grid-template-columns: repeat(5, lfr);
                grid-gap:2rem;
            }

            .card-single{
                display: flex;
                min-width: 340px;
                min-height: 200px;
                justify-content: space-between;
                background: #fff;
                /*border-style: inset;*/
                top: 20px;
                transition: 2;
            }

            .card-single div {
                padding-left: 1.4rem;
                padding-right: 1.4rem;
                padding-top: 0.7rem;
                box-shadow:#ccc;
            }
            .card-single div:hover{

                box-shadow: 0 9px 16px 0 rgba(37, 118, 106, 0.7);
                min-width: 360px;
                min-height: 195px;
                justify-content: space-between;


            }
            .m-v{
                display: block;
                min-height: 30px;
                font-size: 1.7rem;
                margin: 45px;
                margin-top: 10px;

            }

            .m-v h3{
                padding-left: 40%;
                margin-top: 10px;
                margin-bottom: 10px;
            }
            .mision-list li{
                list-style-type:square;
            }


            .clearfix {
                &:after {
                    content: "";
                    display: block;
                    clear: both;
                    visibility: hidden;
                    height: 0;
                }
            }
            .form_wrapper {
                background: #fff;
                width: 60vw;
                height: 82vh;
                max-width: 100%;
                box-sizing: border-box;
                padding: 25px;
                /*margin: 8% auto 0;*/
                margin : auto;
                margin-top:10px;
                position: relative;
                z-index: 1;
                border-top: 5px solid #0096FF;
                -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
                -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
                box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
                -webkit-transform-origin: 50% 0%;
                transform-origin: 50% 0%;
                -webkit-transform: scale3d(1, 1, 1);
                transform: scale3d(1, 1, 1);
                -webkit-transition: none;
                transition: none;
                -webkit-animation: expand 0.8s 0.6s ease-out forwards;
                animation: expand 0.8s 0.6s ease-out forwards;
                opacity: 0;

                .title_container {
                    text-align: center;
                    padding-bottom: 15px;
                }
                label {
                    font-size: 12px;
                }
                .row {
                    margin: 10px -15px;
                    > div {
                        padding: 0 15px;
                        box-sizing: border-box;
                    }
                }
                .col_half {
                    width: 50%;
                    float: left;
                }


            }
            .form_container {
                .row {
                    .col_half.last {
                        border-left: 1px solid #cccccc;
                    }
                }
            }



            .credit {
                position: relative;
                z-index: 1;
                text-align: center;
                padding: 15px;
                color: #f5ba1a;
                a {
                    color: darken(#f5ba1a, 7%);
                }
            }




            @keyframes expand {
                0% {
                    -webkit-transform: scale3d(1, 0, 1);
                    transform: scale3d(1, 0, 1);
                    opacity: 0;
                }
                25% {
                    -webkit-transform: scale3d(1, 1.2, 1);
                    transform: scale3d(1, 1.2, 1);
                }
                50% {
                    -webkit-transform: scale3d(1, 0.85, 1);
                    transform: scale3d(1, 0.85, 1);
                }
                75% {
                    -webkit-transform: scale3d(1, 1.05, 1);
                    transform: scale3d(1, 1.05, 1);
                }
                100% {
                    -webkit-transform: scale3d(1, 1, 1);
                    transform: scale3d(1, 1, 1);
                    opacity: 1;
                }
            }



            @keyframes bounce {
                0% {
                    -webkit-transform: translate3d(0, -25px, 0);
                    transform: translate3d(0, -25px, 0);
                    opacity: 0;
                }
                25% {
                    -webkit-transform: translate3d(0, 10px, 0);
                    transform: translate3d(0, 10px, 0);
                }
                50% {
                    -webkit-transform: translate3d(0, -6px, 0);
                    transform: translate3d(0, -6px, 0);
                }
                75% {
                    -webkit-transform: translate3d(0, 2px, 0);
                    transform: translate3d(0, 2px, 0);
                }
                100% {
                    -webkit-transform: translate3d(0, 0, 0);
                    transform: translate3d(0, 0, 0);
                    opacity: 1;
                }
            }
            @media (max-width: 600px) {
                .form_wrapper {
                    .col_half {
                        width: 100%;
                        float: none;
                    }
                }
                .bottom_row {
                    .col_half {
                        width: 50%;
                        float: left;
                    }
                }
                .form_container {
                    .row {
                        .col_half.last {
                            border-left: none;
                        }
                    }
                }
                .remember_me {
                    padding-bottom: 20px;
                }
            }

            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            * {
                box-sizing: border-box;
            }

            .input-container {
                display: -ms-flexbox; /* IE10 */
                display: flex;
                width: 100%;
                margin-bottom: 15px;
            }

            .icon {
                padding: 10px;
                background: #89CFF0;
                color: white;
                min-width: 50px;
                text-align: center;
            }
            i {
                /*text-shadow: 2px 4px 6px orange;*/
            }
            .a{
                color: #222;
                font-size: 25px;
            }

            .input-field {
                width: 100%;
                border-radius: 0% 7px 7px 0%;
                padding: 10px;
                outline: none;
            }

            .input-field:focus {
                border-radius: 0% 7px 7px 0%;

                border: 2px solid dodgerblue;
            }

            /* Set a style for the submit button */
            .btn {
                background-color: dodgerblue;
                color: white;
                padding: 15px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .btn:hover {
                opacity: 1;
            }
            label {
                display: inline-block;
                margin-bottom: 5px;
            }

            .form-row {
                /*margin-right: 100px;*/
                display: flex;
            }

            .form-group {
                margin-right:100px;
                padding: 25px;
                width: 40%;
            }

            .form-group input {
                width: 100%;
            }
            .avator{
                background-image: url("https://cdn.pixabay.com/photo/2022/06/15/13/39/man-7263965_960_720.png");
                background-size: cover;
                background-repeat: no-repeat;
                width: 40px;
                height: 40px;
                border-radius: 50%;
            }
            #shrinkId{
                display: inline;
            }
            #shrinkId:hover{
                display: inline;
                color: var(--main-color);

            }
            .sidebar_shrink2{
                color: black;
                visibility: visible;
            }
            .sidebar_shrink2.shrink2{
                color: rgba(231, 23, 23, 0.895);
                visibility: hidden;
            }


            .sidebar.shrink1{
                width: 75px;
            }

            .sidebar-menu ul li span.shrink2{
                display: none;
            }

            .main-content.shrink4{
                margin-left: 0;
            }
            main.shrink5{
                display: flex;
                width: 100vw;
                align-items: center;
                justify-content: center;
            }
            .sidebar-brand h2{
                visibility: visible;
            }
            .sidebar-brand h2{
                /* visibility: hidden; */
            }
            .sidebar-brand p{
                display: inline;
            }
            .sidebar-brand p.shrink_logo{
                display: none;
            }
            #web-logo{
                display: inline;
            }

            header.shrink3-side{
                left:75px;
                width: calc(100% - 75px);
            }
            /* drop down menu */


            .user-info img{
                border-radius: 50%;
                margin-right: 1rem;
            }
            #Dash-logo{
                display:inline;
                font-size: 1.5rem;
                position:relative;
                top:-1px;
                left:-14px;
            }

            .sub-menu-wrap{
                position: absolute;
                top: 100%;
                right: 5%;
                width:250px;
                max-height: 0;
                overflow: hidden;
                background-color: #fff;
                border-radius: 4px;
                box-shadow: 1px 2px 16px 1px var(--text-grey);
                transition: max-height 0.5s ease-in-out;
            }
            .sub-menu-wrap.open-sub-menu{
                max-height:400px;
            }
            .sub-menu{
                background-color: #fff;
                padding: 20px;
                margin: 10px;
            }
            .sub-menu hr{
                border: 0;
                height: 1.4px;
                width: 100%;
                background-color: #aeacac;
                margin: 15px 0 10px;
            }
            .user-info{
                display: flex;
                align-items: center;
            }
            .user-info h3{
                font-weight: 400;
            }
            .user-info img{
                width: 60px;
                border-radius: 50%;
                margin-right: 15px;
            }
            .sub-menu-link{
                display: block;
                font-size: 1rem;
                text-decoration: none;
                margin: 12px;
                color: #222;
                transition: transform 0.4s ease;

            }
            .sub-menu-link:hover{
                transform: translate(5px);
                color: #222;
                font-weight: 600;
            }

            .arrow1{
                float:right;
            }

            .icon-menu-left{
                display: inline;
                float: left;
                margin-right: 5%;
            }
            .icon-menu-name{
                display: inline;
                margin-right: 80%;
            }
            .sidebar-menu a{
                padding-left: 1rem;
                display: block;
                color:#fff;
                font-size: 1.1rem;
            }
            .sidebar-menu a:hover{
                color: var(--main-color);
                background-color: #fff;
                border-radius: 30px 0px 0px 30px;
                padding-top:1rem;
            }

            .sidebar-brand{
                height: 90px;
                padding-left: 1rem 1rem 1rem 2rem;
                color:#fff;
            }

            .sidebar-brand h2{
                padding-top: 1.2rem;
                padding-left:1.5rem;
                font-size: 25px;
            }

            #patient-info-1{
                position: relative;
                color: rgb(15, 15, 15);
                text-shadow: #DD2F6E;
                border-radius: 12pc;
                border-color: #fff;
                font-size: 1.1rem;

            }

            .sidebar-menu a span:first-child{
                font-size: 1.7rem;
                padding-right: 1rem;
                transition: all 0.3s ease;
            }

            .sidebar-menu a.active:hover{
                color: var(--main-color);
                background-color: #fff;
                border-radius: 30px 0px 0px 30px;
                padding-top:1rem;
            }

            .sidebar-menu a.active{
                background: var(--main-color);
                padding-top:1rem;
                color:#fff;
                border-radius: 30px 0px 0px 30px;
            }

        </style>
    </head>
    <body >

        <div class="sidebar" id="sidebar_shrink1">
            <div class="sidebar-brand">
                <h2 ><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h2>
            </div>

            <div class="sidebar-menu" >
                <ul id="sampleId">
                    <li><a href="displaylaboratories"  class="text-decoration-none"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Display Laboratories</span>
                        </a></li> 
                    <li><a href="laboratoryregisteration" class="text-decoration-none">
                            <span class="las la-users"></span>
                            <span id="sidebar_shrink22">Add Laboratory</span>

                        </a></li>
                    <li><a href="updatelaboratory" class="text-decoration-none">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Update Laboratory</span>
                        </a></li>
                    <li><a href="" class="text-decoration-none">
                            <span class="las la-capsules"></span>
                            <span id="sidebar_shrink24">Delete Laboratory</span>
                        </a></li>
                    <li><a href="registeradmin" class="text-decoration-none">
                            <span class="las la-cubes"></span>
                            <span id="sidebar_shrink25">Dashboard</span>
                        </a></li>
                </ul>
            </div>
        </div>

        <div class="main-content" id="sidebar_shrink4">
            <header id="sidebar_shrink3">
                <!-- <div class="header-title"> -->
                <h2>
                    <label for="">
                        <div id="shrinkId" onclick="shrink_fun()">
                            <span class="las la-bars" ></span> 
                        </div>
                        <span id="Dash-logo"><a href="registeradmin" class="text-decoration-none"> Dashboard </a></span>

                    </label>                    
                </h2>
                <!-- </div> -->

                <form action="searchdoctor">
                    <div class="search-wrapper">
                        <span class="las la-search">
                            <input type="search" placeholder="Search here" name="a"/>
                        </span>
                    </div>
                </form>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=${adminname}+${lastname}" alt="" height="40" width="40">
                    <div>
                        <h4>${adminid} ${adminname}
                            <br>
                            <small>Super admin</small>
                        </h4>
                    </div>
                </div>

                <div class="sub-menu-wrap" id="submenuId">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="https://ui-avatars.com/api/?background=random&name=${adminname}+${lastname}" alt="">
                            <h3>${adminname} ${lastname}</h3>
                        </div>
                        <hr>

                        <a href="displaytask" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-calendar-check"></i></span>
                            <span class="icon-name">Task</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="updateadmin" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-user-circle"></i></span>
                            <span class="icon-name">Profile</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="contacttohost" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-phone-volume"></i></span>
                            <span class="icon-name">Contact Us</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="signout" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-sign-out-alt"></i></span>
                            <span class="icon-name">Sign out</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                            <!-- <p>></p> -->
                        </a>
                    </div>
                </div>
            </header>

            <main id="sidebar_shrink5">
                <form action="registerformlaboratory" method="post">
                    <div class="form_wrapper">

                        <div class="form_container">
                            <div class="title_container">
                                <h2>Laboratory Registration Form<br></h2>
                                <br>
                                <br>
                            </div>
                            <div class="row clearfix">
                                <div class="input-container">
                                    <i class="a las la-vials icon"></i>

                                    <input class="input-field" type="text" placeholder="Lab name" name="b" required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-list-ol icon"></i>
                                            <input class="input-field" type="text" placeholder="Serial no" name="z" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-hospital icon"></i>
                                            <input class="input-field" type="text" placeholder="Floor number" name="c" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a lar la-building icon"></i>
                                            <input class="input-field" type="text" placeholder="Room number" name="d" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-stethoscope icon"></i>
                                            <input class="input-field" type="text" placeholder="Number of Doctors Required" name="e" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-user-nurse icon"></i>
                                            <input class="input-field" type="text" placeholder="Number of Assistants Required" name="f" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-wallet icon"></i>
                                            <input class="input-field" type="text" placeholder="Salary of Doctors" name="g" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-hand-holding-usd icon"></i>
                                            <input class="input-field" type="text" placeholder="Salary of Assistants" name="h" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-container">
                                            <i class="a las la-credit-card icon"></i>
                                            <input class="input-field" type="text" placeholder="Cost for User" name="i" required>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn">Register</button>


                            </div>
                        </div>
                    </div>
                </form>
            </main>

        </div>
        <script>

            let drop12 = document.getElementById("submenuId");
            function dropmenu() {
                drop12.classList.toggle("open-sub-menu");
            }

            let sha = document.getElementById("sidebar_shrink1");//sidebar
            let shz = document.getElementById("sampleId");//li
            let shc = document.getElementById("sidebar_shrink3");//header
            let shd = document.getElementById("sidebar_shrink4");//main-content
            let she = document.getElementById("sidebar_shrink5");//main

            let xy0 = document.getElementById("logo_hide");
            let xy1 = document.getElementById("sidebar_shrink21");//main
            let xy2 = document.getElementById("sidebar_shrink22");//main
            let xy3 = document.getElementById("sidebar_shrink23");//main
            let xy4 = document.getElementById("sidebar_shrink24");//main
            let xy5 = document.getElementById("sidebar_shrink25");//main
            let xy6 = document.getElementById("sidebar_shrink26");//main
            let xy7 = document.getElementById("sidebar_shrink27");//main
            let xy8 = document.getElementById("sidebar_shrink28");//main
            let xy9 = document.getElementById("sidebar_shrink29");//main

            function shrink_fun()
            {
                sha.classList.toggle("shrink1");
                shc.classList.toggle("shrink3-side");
                shd.classList.toggle("shrink4");
                she.classList.toggle("shrink5");

                xy0.classList.toggle("shrink_logo");
                xy1.classList.toggle("shrink2");
                xy2.classList.toggle("shrink2");
                xy3.classList.toggle("shrink2");
                xy4.classList.toggle("shrink2");
                xy5.classList.toggle("shrink2");
                xy6.classList.toggle("shrink2");
                xy7.classList.toggle("shrink2");
                xy8.classList.toggle("shrink2");
                xy9.classList.toggle("shrink2");
            }

        </script>
    </body>
</html>
