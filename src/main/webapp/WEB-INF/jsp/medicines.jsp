<%-- 
    Document   : new1
    Created on : 16-Feb-2023, 7:37:39 am
    Author     : HP
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

        <!-- <link rel="stylesheet" href="admin.css"> -->
        <!-- Bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <!-- scroll reveal link -->
        <script src="https://unpkg.com/scrollreveal"></script>
        <style>
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
                transition: all .4s ease;
                z-index: 100;
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
                /* padding-left: 1rem; */
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

                /* padding-left: 1rem 1rem 1rem 2rem; */
                color:#fff;
            }

            .sidebar-brand h2{
                padding-top: 1.2rem;
                padding-left:1.5rem;
            }


            .sidebar-menu a span:first-child{
                font-size: 1.5rem;
                /* padding-right: 1rem; */
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
                background-color: #fff;
                transition: all .4s ease;
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
                transition: all .4s ease;   /* margin: auto; */
            }

            .cards-for-work{
                display: grid;

                /* left: 300px; */
                grid-template-columns: repeat(3, 1fr);
                grid-gap:2rem;
                margin: 0 auto;
            }

            .card-single{
                text-align: center;
                /*display: flex;*/

                min-width: 340px;
                min-height: 200px;
                border-radius: 5px;
                background: white;
                padding-top:3%;
                box-shadow: 0 4px 15px rgba(0,0,0,0.6);
                align-items: center;
            }

            .card-single div {
                padding-left: 1.4rem;
                padding-right: 1.4rem;
                padding-top: 0.7rem;
                box-shadow:#ccc;
            }

            .m-v{
                display: block;
                min-height: 30px;
                font-size: 1.7rem;
                margin: 45px;
                margin-top: 10px;
            }
            .m-v.mvShift{
                margin-left: 100px;
            }

            .m-v h3{
                padding-left: 40%;
                margin-top: 10px;
                margin-bottom: 10px;
            }
            .mision-list li{
                list-style-type:square;
            }

            input[type=submit]{
                margin-top: 20px;
                text-decoration: none;
                padding: 5px 5px;
                cursor: pointer;
                border-radius: 5px;
            }
            input[type=submit]:hover{
                border:solid;
                color: black;
                padding: 8px 8px;
                cursor: pointer;
            }

            #btn-le1{
                background-color: greenyellow;
                font-size: 1rem;
                font-weight: 750;

            }
            #btn-le2{
                background-color: red;
                font-size: 1rem;
                font-weight: 750;

            }
            #btn-le3{
                background-color: #85CDFD;
                font-size: 1rem;
                font-weight: 750;

            }
            .close-container1{
                position: absolute;
                margin: auto;
                bottom: 15vh;
                right: 40vw;
                width: 50px;
                height: 50px;
                margin-top: 200px;
                cursor: pointer;
            }
            .m-v h1{
                padding-left: 45%;
                margin-top: 40px;
                margin-bottom: 20px;
            }
            .mision-list li{
                list-style-type:square;
                list-style: none;
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
                visibility: hidden;
                display: none;
            }
            header.shrink3{
                left: 75px;
                width: calc(100% - 75px);
            }

            .sidebar.shrink1{
                width: 75px;
            }
            /* Side bar SHUBHAM */
            .sidebar-menu ul li span.sideBarShrink2{
                display: none;
            }

            .main-content.shrink4{
                margin-left: 0;
            }
            main.sidebarShrinkMain{
                display: flex;
                width: 100vw;
                margin-left: 2vw;


                /* margin: auto; */
                /* align-items: center;
                justify-content: center; */
            }
            ul{
                margin-left: 20px;
                ;
            }

            .sidebar-brand h2{
                /* visibility: hidden; */
            }
            .sidebar-brand p{
                display: inline;
            }
            .sidebar-brand p.shrink_logo{
                /* visibility: hidden; */
                display: none;
            }
            #web-logo{
                display: inline;
            }

            /* dropdown menu css */
            /* drop down menu */


            .user-info img{
                border-radius: 50%;
                margin-right: 1rem;
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
                font-weight: 500;
                font-size: 1.2rem;
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


            legend.scheduler-border {
                font-size: 1.2rem !important;
                text-align: center;
                margin-top: -5%;
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-weight: 700;
                /* background-color: #bed7e84e; */
            }
            #lgnd-1{
                color: rgb(83, 185, 32);
            }
            #lgnd-2{
                color: rgba(247, 34, 30, 0.785);
            }
            #lgnd-3{
                color: rgba(132, 7, 154, 0.785);
            }

            #lgnd-4{
                /*color: rgba(150, 5, 154, 0.785);*/
                color: #60c7c1;
            }

            #lgnd-5{
                /*color: rgba(150, 5, 154, 0.785);*/
                color: #F0A04B;
            }

            a{
                text-decoration: none;
                padding: 0;
            }
            #profile-name{
                font-size: 1.2rem;
                margin-bottom: 0;
            }

            .extraField h3{
                font-size: 1.5rem;
                font-weight: 500;
            }
            .extraField div{
                display: grid;
                grid-template-columns: 1fr 1fr;
                align-items: center;
                justify-content: center;
            }
            .extraField  p{
                font-size: 1rem;
                font-weight: 600;
                text-align: center;
            }
            .contain{
                /* background-color: #bfeaf57e; */
                /* display: flex;
                flex-direction: row; */
                margin: auto;
                margin-top: 0;
                width: 90%;
                padding: 40px 0 40px 40px;
                border-radius:10px;
            }

            .lab-background{
                background-image: url(https://images.unsplash.com/photo-1561328399-f94d2ce78679?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80) ;
                opacity:.9;
                /* height: 700px; */
                width: 100%;
                border-radius: 7px;
                background-size: cover;
                font-size: 50px;
                text-align: center;
                padding-top: 13%;
            }
            .lab-background h1{
                color: white;
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-weight: 600;
                font-size: 5rem;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: black;
            }
            .contain h2{
                padding: 15px 0 ;
                color: black;
                text-align: center;
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-weight: 200;
                font-size: 2.5rem;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: black;
            }
            .contain h3{
                padding: 20px 0 ;
                color: black;
                text-align: center;
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-weight: 200;
                font-size: 2.5rem;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: black;
            }
            .contain h4{
                padding: 20px 0 ;
                color: black;
                font-family: Georgia, 'Times New Roman', Times, serif;
                font-weight: 200;
                font-size: 2rem;
                -webkit-text-stroke-width: 1px;
                -webkit-text-stroke-color: black;
            }

            /* scroll bar animation */
            .scroll-indicator-container{
                width: 100%;
                height: 5px;
            }

            .scroll-indicator-bar{
                background-image: linear-gradient(to right,#e946d0 0%, #ef61f9 40%, #5aebfb 90%);
                width: 0%;
                height: 100%;
                box-shadow: 0 5px 25px #199fff;
            }

            .nav-close-btn, .nav-menu-btn{
                display: none;
            }

            .scrollIndicatorDiv{
                position: fixed;
                /* background-color: #fff; */
                margin-top: -2xpx;
                height: 50px;
                z-index: 1;
                width: 100%;
            }


            /* reveal animation  */


            section{
                min-height: 90vh;
                display: flex;
            }
            section:nth-child(2)
            {

                display: block;
                margin-top: 10vh;
                padding-top: 2vh;
                min-height: 60vh;
            }
            section:nth-child(2) h2{
                margin-bottom: 10vh;
            }
            section:nth-child(3){
                display: block;
                min-height: 20vh;
            }

        </style>
    </head>
    <body >

        <div class="sidebar" id="sidebar_shrink1">
            <div class="sidebar-brand">
                <h2 ><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h2>
            </div>

            <div class="sidebar-menu">
                <ul class="list-unstyled">
                    <li><a href="displaymedicines"> 
                            <span class="las la-stethoscope"></span>
                            <span>Display Medicines</span>
                        </a></li>
                    <li><a href="medicinesregisteration">
                            <span class="las la-users"></span>
                            <span>Add Medicine</span>

                        </a></li>
                    <li><a href="updatemedicines">
                            <span class="las la-x-ray"></span>
                            <span>Update Medicine</span>
                        </a></li>

                    <li><a href="">
                            <span class="las la-capsules"></span>
                            <span>Delete Medicine</span>
                        </a></li>
                    <li><a href="registeradmin">
                            <span class="las la-clipboard-list"></span>
                            <span>Dashboard</span>
                        </a></li>
                </ul>
            </div>
        </div>

        <div class="main-content" id="sidebar_shrink4">
            <header id="sidebar_shrink3">
                <!-- <div class="header-title"> -->
                <h2>
                    <label for="">
                        <div id="shrinkId" onclick="shrink_fun()"><span class="las la-bars" ></div>
                        <a href="registeradmin"> Dashboard </a></span>  
                    </label>                    
                </h2>
                <!-- </div> -->

                <div class="search-wrapper">
                    <span class="las la-search">
                        <input type="search" placeholder="Search here" />
                    </span>
                </div>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=${adminname}+${lastname}" alt="" height="40" width="40">
                    <div>
                        <h6>${adminid} ${adminname}
                            <br>
                            <small>Super admin</small>
                        </h6>
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

            <div class="scrollIndicatorDiv">
                <!-- for scroll bar indicator -->
                <div class="scroll-indicator-container">
                    <div class="scroll-indicator-bar"></div>
                </div>
                <!-- for scroll bar indicator -->
                <!-- nav scrolling bar  -->
                <i class="uil uil-times nav-close-btn"></i>
                <i class="uil uil-apps nav-menu-btn"></i>
                <!-- nav scrolling bar  -->
            </div>


            <main id="mainId">

                <div class="contain">
                    <section class="section1">
                        <div class="lab-background">
                            <h1 class="dscrp-tlt1">Hospital Medicine Management</h1>                    
                        </div>
                    </section>


                    <section class="section2">
                        <h2 class="dscrp-tlt2">Information About Medicines</h2>
                        <div class="cards-for-work Reveal">

                            <fieldset>
                                <div class="card text-center" style="width: 18rem;">
                                    <legend id="lgnd-1" class="scheduler-border">.Total</legend>
                                    <div class="card-body">
                                        <h5 class="card-title">4</h5>
                                        <p class="card-text">Total Types of Medicines Available at hospital</p>
                                        <a href="#" class="btn btn-primary" id="btn-Le1">Know more</a>
                                    </div>
                                </div>
                            </fieldset>


                            <fieldset>
                                <div class="card text-center" style="width: 18rem;">
                                    <legend id="lgnd-2" class="scheduler-border">.Types</legend>
                                    <div class="card-body">
                                        <h5 class="card-title">285</h5>
                                        <p class="card-text">Total Medicines Available in all at Hospital</p>
                                        <a href="#" class="btn btn-primary" id="btn-Le2">Know more</a>
                                    </div>
                                </div>
                            </fieldset>

                            <fieldset>
                                <div class="card text-center" style="width: 18rem;">
                                    <legend id="lgnd-3" class="scheduler-border">.Sell</legend>
                                    <div class="card-body">
                                        <h5 class="card-title">148260</h5>
                                        <p class="card-text">Total Sell of Medicines in Last Year at Hospital</p>
                                        <a href="#" class="btn btn-primary" id="btn-Le3">Know more</a>
                                    </div>
                                </div>
                            </fieldset>

                            <fieldset>
                                <div class="card text-center" style="width: 18rem;">
                                    <legend id="lgnd-4" class="scheduler-border">.Import</legend>
                                    <div class="card-body">
                                        <h5 class="card-title">150000</h5>
                                        <p class="card-text">Total Import of Medicines in Last Year at Hospital</p>
                                        <a href="#" class="btn btn-primary" id="btn-Le3">Know more</a>
                                    </div>
                                </div>
                            </fieldset>

                            <fieldset>
                                <div class="card text-center" style="width: 18rem;">
                                    <legend id="lgnd-5" class="scheduler-border">.Profit</legend>
                                    <div class="card-body">
                                        <h5 class="card-title">Rs 44,708 Cr.</h5>
                                        <p class="card-text">Total Profit in Medicines of Last Year at Hospital</p>
                                        <a href="#" class="btn btn-primary" id="btn-Le3">Know more</a>
                                    </div>
                                </div>
                            </fieldset>

                        </div>
                    </section>

                    <!--                    <section class="section2">
                                            <div class="extraField Reveal">
                                                <h3 class="dscrp-tlt2">Timing of Laboratories</h3>
                                                <div >
                                                    <p> Morning - 8:00 A.M. - 1:00 P.M. </p><p>Afternoon - 2:30 P.M. - 7:30 P.M.</p>
                    
                                                </div></div>    </section>-->

                </div>



            </main>


        </div>

    </body>
    <script>

        let drop12 = document.getElementById("submenuId");
        function dropmenu() {
            drop12.classList.toggle("open-sub-menu");
        }

        

        let shz = document.getElementById("sampleId");//ul
        let xy1 = document.getElementById("sidebar_shrink21");//li
        let xy2 = document.getElementById("sidebar_shrink22");//li
        let xy3 = document.getElementById("sidebar_shrink23");//li
        let xy4 = document.getElementById("sidebar_shrink24");//li
        let xy5 = document.getElementById("sidebar_shrink25");//li
        let xy6 = document.getElementById("sidebar_shrink26");//li
        let xy7 = document.getElementById("sidebar_shrink27");//li
        let xy8 = document.getElementById("sidebar_shrink28");//li
        let xy9 = document.getElementById("sidebar_shrink29");//li
        
        let sha = document.getElementById("sidebar_shrink1");//sidebar
        let shc = document.getElementById("sidebar_shrink3");//header
        let shd = document.getElementById("sidebar_shrink4");//main-content
        let mainId = document.getElementById("mainId");//main
        let xy0 = document.getElementById("logo_hide");
        let mvId = document.getElementById("mvId");

        function shrink_fun()
        {
            sha.classList.toggle("shrink1");
            shc.classList.toggle("shrink3");
            shd.classList.toggle("shrink4");
            mainId.classList.toggle("sidebarShrinkMain");

            xy0.classList.toggle("shrink_logo");
            xy1.classList.toggle("sideBarShrink2");
            xy2.classList.toggle("sideBarShrink2");
            xy3.classList.toggle("sideBarShrink2");
            xy4.classList.toggle("sideBarShrink2");
            xy5.classList.toggle("sideBarShrink2");
            xy6.classList.toggle("sideBarShrink2");
            xy7.classList.toggle("sideBarShrink2");
            xy8.classList.toggle("sideBarShrink2");
            xy9.classList.toggle("sideBarShrink2");

            mvId.classList.toggle("mvShift");
        }

    </script>
    <!-- Reveal elements on scroll  -->

    <!-- scroll animation short cut -->
    <script>
        ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2000,
            delay: 300
        });

        ScrollReveal().reveal('.dscrp-tlt1', {delay: 500, origin: 'left'});
        ScrollReveal().reveal('.dscrp-tlt2', {delay: 500, origin: 'bottom'});
        ScrollReveal().reveal('.section1', {delay: 100, origin: 'bottom'});
        ScrollReveal().reveal('.section2', {delay: 500, origin: 'bottom'});


    </script>
    <!-- script for scroll animaion indicator -->
    <script>
        // Javacript for the scroll indicator bar
        window.addEventListener("scroll", () => {
            const indicatorBar = document.querySelector(".scroll-indicator-bar");

            const pageScroll = document.body.scrollTop || document.documentElement.scrollTop;
            const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            const scrollValue = (pageScroll / height) * 100;

            indicatorBar.style.width = scrollValue + "%";
        });

        //Responsive navigation menu toggle
        const menuBtn = document.querySelector(".nav-menu-btn");
        const closeBtn = document.querySelector(".nav-close-btn");
        const navigation = document.querySelector(".navigation");

        menuBtn.addEventListener("click", () => {
            navigation.classList.add("active");
        });

        closeBtn.addEventListener("click", () => {
            navigation.classList.remove("active");
        });
    </script>
</html>