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
                transition: all 0.3s ease ;
            }


            .sidebar-brand span{
                display:inline-block;
                padding-right: 1rem;
            }

            .sidebar-menu li
            {
                width: 100%;
                margin-bottom: 1.3rem;
                visibility: visible;
            }


            /* sidebar-menu ul li,  sidebar, header, main-content, main */



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
                /*margin-bottom: 1rem;*/
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
            .main-content{
                margin-left: 345px;
                transition: all .3s ease;
            }



            header {
                display: flex;
                justify-content: space-between;
                padding: 1rem 1.5rem;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
                background-color: #fff;
                position: fixed;
                left: 345px;
                width:calc(100% - 345px);
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
                width: calc(100%-345px);
                margin-top: 85px;
                padding: 2rem 1.5rem;
                background: #f1f5f9;
                min-height: calc(100vh -90px);
                transition: all 0.7s ease;
            }


            .cards{
                /* display: grid; */
                display: inline-flex;

                grid-template-columns: repeat(4, lfr);
                grid-gap:2rem;
            }

            .card-single{
                display: flex;
                min-width: 220px;
                min-height: 200px;
                justify-content: space-between;
                background: #fff;
                transition: 0.5s ease;
            }

            .card-single div {
                padding-left: 1.4rem;
                padding-top: 0.7rem;
                box-shadow:#ccc;
                /* transition: all .4s ease; */
            }
            .card-single div:hover{

                box-shadow: 0 9px 16px 0 rgba(37, 118, 106, 0.7);
                min-width: 223px;
                min-height: 203px;
                justify-content: space-between;

            }
            .m-v{
                display: block;
                min-height: 50px;
                font-size: 1.7rem;
                margin: 150px;
                margin-top: 10px;

            }

            .m-v h1{
                padding-left: 45%;
                margin-top: 40px;
                margin-bottom: 20px;
            }
            .mision-list li{
                list-style-type:square;
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


        </style>
    </head>
    <body >

        <div class="sidebar" id="sidebar_shrink1">
            <div class="sidebar-brand">
                <h2 ><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h2>
            </div>

            <div class="sidebar-menu">
                <ul id="sampleId">

                    <li><a href="appoinment" > 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Appoinment</span>
                        </a></li> 
                    <li><a href="displayformalldoctor_1"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink22">Doctors</span>
                        </a></li> 

                    <li><a href="displaylaboratories_1">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Laboratories</span>
                        </a></li>

                    <li><a href="facilitiesuser">
                            <span class="las la-cubes"></span>
                            <span id="sidebar_shrink24">Facilities</span>
                        </a></li>
                    <li><a href="displayformallstaff_1">
                            <span class="las la-user-nurse"></span>
                            <span id="sidebar_shrink25">Staff</span>
                        </a></li>
                    <li><a href="updateuser">
                            <span class="las la-user-alt"></span>
                            <span id="sidebar_shrink26">Profile</span>
                        </a></li>

                    <li><a href="contactus">
                            <span class="las la-phone-volume"></span>
                            <span id="sidebar_shrink27">Contact us</span>
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
                        <a href="registeruser"> Dashboard </a></span>  
                    </label>                    
                </h2>
                <!-- </div> -->

                <div class="search-wrapper">
                    <span class="las la-search">
                        <input type="search" placeholder="Search here" />
                    </span>
                </div>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=${username}+${userlastname}" alt="" height="40" width="40">
                    <div>
                        <h4><b>${userid} ${username}</b>
                            <br>
                            <small>User</small>
                        </h4>
                    </div>
                </div>

                <div class="sub-menu-wrap" id="submenuId">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="https://ui-avatars.com/api/?background=random&name=${username}+${userlastname}" alt="">
                            <h3>${username} ${userlastname}</h3>
                        </div>
                        <hr>

                        <a href="appoinment" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-calendar-check"></i></span>
                            <span class="icon-name">Appoinment</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="updateuser" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-user-circle"></i></span>
                            <span class="icon-name">Profile</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="contactus" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-phone-volume"></i></span>
                            <span class="icon-name">Contact Us</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="signout" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-sign-out-alt"></i></span>
                            <span class="icon-name">Sign out</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                            <!-- <p>></p> -->
                        </a>
                    </div>
                </div>

            </header>


            <main id="sidebar_shrink5">
                <div class="cards">
                    <div class="card-single">
                        <div>
                            <h1>50k+</h1>
                            <span>Patients Treated</span>
                            <!-- </div>
                            <div> -->
                            <span class="las la-users"> </span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>10+ </h1>
                            <span>Spacialists Doctors</span>
                            <!-- </div>
                            <div> -->
                            <span class="las la-clipboard"> </span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>20+</h1>
                            <span>Ambulances</span>
                            <!-- </div>
                            <div> -->
                            <span class="las la-shipping-bag"> </span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>200+</h1>
                            <span>Employees</span>
                            <!-- </div>
                            <div> -->
                            <span class="lab la-google-wallet"> </span>
                        </div>

                    </div>
                </div>
            </main>
            <div class="m-v">

                <span><h1 id="vis">Vision</h1></span>
                <span> <p>To bring healthcare of International standards to this region, to evolve as a premier hospital in the country and to TOUCH the lives of the
                        people we serve through excellence in clinical care, quality and commitment.</p></span>

                <span><h1>Mision</h1></span>
                <span><p><ul class="mision-list">
                        <li> To provide Hope, Care and Cure.
                        <li> To provide compassionate, accessible, high quality, cost effective healthcare to one all.
                        <li> To serve with a patient's first motto and to work towards a patient- centered care.</ul></p></span>
            </div>
        </div>
       

    </body>
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
</html>
