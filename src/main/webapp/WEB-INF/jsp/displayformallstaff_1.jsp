
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Account Software</title>
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">


        <style>

            :root{
                --main-color: #DD2F6E;
                --color-dark: #000000;
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
                font-size: 150%;
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
                transition: all 0.3s ease;
            }


            header {
                display: flex;
                justify-content: space-between;
                padding: 1rem 1.5rem;
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
                background-color: #fff;
                position: fixed;
                left: 345px;
                width:calc(100% - 354px);
                height: 11%;
                top:0;
                z-index: 100;
                transition: all 0.3s ease;
            }
            .avator{
                background-image: url("https://cdn.pixabay.com/photo/2022/06/15/13/39/man-7263965_960_720.png");
                background-size: cover;
                background-repeat: no-repeat;
                width: 40px;
                height: 40px;
                border-radius: 50%;
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
                font-size: 1rem;
                outline: none;
                border: none;
            }


            /* search button */
            #search-button{
                background-color: rgba(193, 190, 190, 0);
                border: 0 solid rgba(255, 255, 255, 0);
                padding: 6px 2px;
                border-radius:90%;
                transition: 0.2s;
            }
            #search-button:hover{
                box-shadow: 2px 2px 13px 3px #b2b3b597;
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
                display:flex;
                background-color: #fff;
                flex-direction: column;
                height: 50vh;
                /* margin-left: 0vw; */
            }

            .container{
                display: flex;
                flex-direction: column;
                margin-top: 0;
                /*background-color: #fff;*/

            }

            .single-card{
                display: flex;
                flex-direction: column;
                margin: auto;
                width:90em;
                height: 28vh;
                max-width:50vw;
                max-height: 45vh;
                margin-top: 20px;
                padding: 10px;
                border-radius: 50px;
                border: 2px solid rgba(128, 128, 128, 0.872);
            }
            #contact-card{
                height: 21vh;
            }
            #address-card{
                height: 15vh;
            }
            #medical-card{
                height: 35vh;
            }
            .single-card span{
                margin-left: 1em;
                font-size: 1.3rem;
            }

            .profile-image img{
                background-color: #fff;
                border: 5px solid #ccc;
                border-radius: 50%;
                height: 100px;
                transition: 0.2s ease-out;
            }
            .profile-image img:hover{
                height: 108px;
                box-shadow:3px 3px 3px 4px rgba(46, 191, 179, 0.249);
            }
            .profile-image{
                border: 0;
                margin: auto;
                margin-top: 10px;
            }
            .info-list ul{
                margin-left: 3%;
                padding-top: 1em;
                border-radius: 30px;

            }
            .info-list ul li{
                margin-bottom: 5px;
                border-radius: 30px;
            }

            .display-info-line{
                display: block;
                height: 1.5em;
                width: 98%;
                margin-bottom: 10px;
                border-radius: 5px;
                font-size: 1.6rem;
                background-color: #fff;
                border: 0;
                border-bottom: 2px solid rgb(99, 96, 96);
                transition: all 0.5s ease-out;
            }
            .display-info-line:hover{
                transform: translate(10px,0);
                box-shadow: 4px 2px 3px 5px rgba(107, 196, 184, 0.192);
            }
            .discribe-field{
                float: left;
            }

            .field-value{
                float: center;

            }

            .arrow{
                float: right;
                margin-right: 1em;
                transition: 0.5s ease-out;
            }
            .arrow:hover{
                transform: translate(5px,0);
            }
            .m-v{
                display: block;
                min-height: 50px;
                font-size: 1.2rem;
                margin: 100px;
                margin-top: 10px;
            }

            .mision-list li{
                list-style-type:square;
            }

            table{
                border-collapse: separate;
                border-spacing: 0 5px;
            }
            td{
                border: 2px 0 solid rgb(209, 242, 247);
                font-size: 1.1rem;
                text-align: center;
                background-color: white;
                height: 3rem;
            }
            th{
                font-size: 0,7rem;
                height: 3rem;
                font-weight: 550;
                background-color: rgb(247, 252, 250);
                text-align: center;
            }
            th:nth-child(1){
                border-radius: 20px 0 0 20px;
            }
            td:nth-child(1){
                border-radius: 500px 0 0 500px;
            }
            td:last-child{
                border-radius: 0 50px 50px 0;
            }
            th:last-child{
                border-radius: 0 20px 20px 0;
            }

            tr:hover{
                background-color: rgba(236, 251, 245, 0.836);
            }
            td:hover{
                background-color: rgba(236, 251, 245, 0.836);

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
            #Dash-logo{
                display:inline;
                font-size: 1.5rem;
                position:relative;
                top:-1px;
                left:-14px;
            }
            img {
                border-radius: 50%;
                margin-left: -18px;
                margin-top: -8px;
                margin-bottom: -8px;
            }
        </style>
    </head>
    <body >

        <div class="sidebar" id="sidebar_shrink1" >
            <div class="sidebar-brand">
                <h2 ><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h2>
            </div>

            <div class="sidebar-menu">
                <ul id="sampleId" class="list-unstyled">

                    <li><a href="appoinment"  class="text-decoration-none"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Appoinment</span>
                        </a></li> 
                    <li><a href="displayformalldoctor_1" class="text-decoration-none"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink22">Doctors</span>
                        </a></li> 

                    <li><a href="displaylaboratories_1" class="text-decoration-none">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Laboratories</span>
                        </a></li>

                    <li><a href="facilitiesuser" class="text-decoration-none">
                            <span class="las la-cubes"></span>
                            <span id="sidebar_shrink24">Facilities</span>
                        </a></li>
                    <li><a href="displayformallstaff_1" class="text-decoration-none">
                            <span class="las la-user-nurse"></span>
                            <span id="sidebar_shrink25">Staff</span>
                        </a></li>
                    <li><a href="updateuser" class="text-decoration-none">
                            <span class="las la-user-alt"></span>
                            <span id="sidebar_shrink26">Profile</span>
                        </a></li>

                    <li><a href="contactus" class="text-decoration-none">
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
                        <span id="Dash-logo">
                            <a href="registeruser" class="text-decoration-none"> Dashboard </a></span>
                    </label>                    
                </h2>
                <!-- </div> -->

                <form action="searchstaff_1">
                    <div class="search-wrapper">
                        <span class="las la-search">
                            <input type="search" placeholder="Search here" name="a"/>
                        </span>
                    </div>
                </form>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=${username}+${userlastname}" alt="" height="40" width="40">
                    <div>
                        <h6><b>${userid} ${username}</b>
                            <br>
                            <small>User</small>
                        </h6>
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
                <div class="container" style="overflow-x:auto;">

                    <table  style="width:115%">
                        <thead>
                            <tr>
                                <th></th>
                                <th>ID</th>

                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Gender</th>
                                <th>Mobail no.</th>
                                <th>Email</th>
                            </tr>
                        </thead>

                        <tr>
                            <%

                                List<String> l1 = (List<String>) request.getAttribute("l1");
                                List<String> l2 = (List<String>) request.getAttribute("l2");
                                List<String> l3 = (List<String>) request.getAttribute("l3");
                                List<String> l5 = (List<String>) request.getAttribute("l5");
                                List<String> l7 = (List<String>) request.getAttribute("l7");
                                List<String> l9 = (List<String>) request.getAttribute("l9");


                            %>
                            <%                        int i = 0;
                                for (String o : l1) {

                                    out.print("<tr>"
                                            + "<td>" + "<img src=https://ui-avatars.com/api/?background=random&name=" + l2.get(i) + "+" + l3.get(i) + "width=45 height=45>" + "</td>"
                                            + "<td>" + l1.get(i) + "</td> "
                                            + "<td>" + l2.get(i) + "</td> "
                                            + "<td>" + l3.get(i) + "</td>"
                                            + "<td>" + l5.get(i) + "</td> "
                                            + "<td>" + l7.get(i) + "</td>"
                                            + "<td>" + l9.get(i) + "</td>"
                                            + "</tr>"
                                    );
                                    //                            out.print("<table>" + "<tr>" + "<th>" + o2.get(i) + "</th> " + " </tr>" + "</table>");
                                    i++;
                                }
                            %>
                        </tr>

                        </tbody>
                    </table>
                </div>

            </main>
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
        </div>
    </body>
</html>





