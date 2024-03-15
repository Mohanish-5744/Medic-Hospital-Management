<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            /* Design for table */
            table{
                border-collapse: separate;
                border-spacing: 0 5px;
                background-color: #f3efef;

            }
            td{
                border: 2px 0 solid rgb(209, 242, 247);
                /* border-top: 2px solid grey; */
                font-size: 1.1rem;
                text-align: center;
                background-color: rgb(248, 248, 248);
                height: 3rem;
            }
            th{
                font-size: 0,7rem;
                height: 3rem;
                font-weight: 600;
                background-color: #f3efef;
                text-align: center;
            }
            td:nth-child(1){
                border-radius: 20px 0 0 20px;
                /* box-shadow: 0 1px rgba(85, 84, 84, 0.347); */
            }
            td:last-child{
                border-radius: 0 20px 20px 0;
            }

            tr:hover{
                background-color: rgba(236, 251, 245, 0.836);
            }
            td:hover{
                background-color: rgba(236, 251, 245, 0.836);

            }

            /* modal class for diplaying table */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 100px; /* Location of the box */
                left: 0;
                top: 0;
                margin-left: 330px;
                width: 80%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content */
            .modal-content {
                position: relative;
                background-color: #f0f0f0;
                margin: auto;
                padding: 10px;
                border: 1px solid #888;
                border-radius: 4px;
                width: 90%;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: animatetop;
                -webkit-animation-duration: 0.4s;
                animation-name: animatetop;
                animation-duration: 1s;
            }
            .modal.myModalShift{
                margin-left:1vw;
                width: 100vw;
            }
            .modal-content.moadalContentShift{
                width: 90vw;
                margin-left: 5vw;
            }
            .modal-header{
                display: inline;
                text-align: center;
                color: #FFFFFF;
                font-weight: 700;
                font-family: Georgia, 'Times New Roman', Times, serif;
                background-image: linear-gradient(to right, rgb(221, 7, 128) 0%, rgb(181, 106, 243) 100%);
            }
            .modal-footer{
                /* font-size: 1rem; */
                background-image: linear-gradient(to right, rgb(164, 7, 221) 0%, rgb(106, 220, 243) 100%);
                z-index: 1;
                color: white;

            }
            .modal-confirm {
                color: #636363;
                width: 400px;
            }
            .modal-confirm .modal-content {
                padding: 20px;
                border-radius: 5px;
                border: none;
                text-align: center;
                font-size: 14px;
            }
            .modal-confirm .modal-header {
                border-bottom: none;
                position: relative;
            }
            .modal-confirm h4 {
                text-align: center;
                font-size: 26px;
                margin: 30px 0 -10px;
            }
            .modal-confirm .close {
                position: absolute;
                top: -5px;
                right: -2px;
            }
            .modal-confirm .modal-body {
                color: #999;
            }
            .modal-confirm .modal-footer {
                border: none;
                text-align: center;
                border-radius: 5px;
                font-size: 13px;
                padding: 10px 15px 25px;
            }
            .modal-confirm .modal-footer a {
                color: #999;
            }
            .modal-confirm .icon-box {
                width: 80px;
                height: 80px;
                margin: 0 auto;
                border-radius: 50%;
                z-index: 9;
                text-align: center;
                border: 3px solid #f15e5e;
            }
            .modal-confirm .icon-box i {
                color: #f15e5e;
                font-size: 46px;
                display: inline-block;
                margin-top: 13px;
            }
            .modal-confirm .btn, .modal-confirm .btn:active {
                color: #fff;
                border-radius: 4px;
                background: #60c7c1;
                text-decoration: none;
                transition: all 0.4s;
                line-height: normal;
                min-width: 120px;
                border: none;
                min-height: 40px;
                border-radius: 3px;
                margin: 0 5px;
            }
            .modal-confirm .btn-secondary {
                background: #c1c1c1;
            }
            .modal-confirm .btn-secondary:hover, .modal-confirm .btn-secondary:focus {
                background: #a8a8a8;
            }
            .modal-confirm .btn-danger {
                background: #f15e5e;
            }
            .modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
                background: #ee3535;
            }
            .modal-confirm .btn-danger1 {
                background: skyblue;
            }
            .modal-confirm .btn-danger1:hover, .modal-confirm .btn-danger1:focus {
                background: blue;
            }
            .trigger-btn {
                display: inline-block;
                margin: 100px auto;
            }

            /* pop up */
            .icon-box{
                color: var(--main-color);
                background-color: #1D2231;
            }
            .icon-box i{
                color: #ddd;
            }
            #cancel-btn{
                background-color:   #6e7b7ef4;
                transition: all 0.3s ease-in-out;
            }
            #cancel-btn:hover{
                background-color:   #485052f4;
            }

            #delete-btn{
                position: relative;
                top: 0;
                display: inline;
                background-color: #f81e46;
                left: 10px;
                /*height: 48px;*/
                transition: all 0.3s ease-in-out;

                /* font-size: 2rem; */
            }
            ::value{
                font-size: 1rem;
            }



            /* Add Animation */
            @-webkit-keyframes animatetop {
                0% {
                    top:-100px;
                    opacity:0
                }
                50%{
                    top:-50px;
                    opacity: 0.4;
                }
                100% {
                    top:0;
                    opacity:1;
                }
            }

            @keyframes animatetop {
                from {
                    top:-300px;
                    opacity:0
                }
                to {
                    top:0;
                    opacity:1;
                }
            }

            /* The Close Button */
            .close {
                color: rgb(32, 28, 28);
                float: right;
                font-size: 28px;
                font-weight: bold;
                animation: zoom 1.7s infinite ease-in-out;
            }
            @keyframes zoom {
                0%{
                    font-size: 1.7rem;
                }
                50%{
                    font-size: 1.9rem;
                }
                100%{
                    font-size: 1.7rem;
                }


            }

            .close:hover,
            .close:focus {
                color: #df1212;
                text-decoration: none;
                cursor: pointer;
            }
            a{
                text-decoration: none;
            }

            #Dash-logo{
                display:inline;
                font-size: 1.5rem;
                position:relative;
                top:-1px;
                left:-14px;
            }
            .close1 {
                color: rgb(32, 28, 28);
                float: left;
                font-weight: bold;
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
                    <li><a href="displayformalldoctor" class="active"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Doctors</span>
                        </a></li> 
                    <li><a href="displayformalluser">
                            <span class="las la-users"></span>
                            <span id="sidebar_shrink22">Patients</span>

                        </a></li>
                    <li><a href="laboratory">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Laboratories</span>
                        </a></li>
                    <li><a href="medicines">
                            <span class="las la-capsules"></span>
                            <span id="sidebar_shrink24">Medicines</span>
                        </a></li>
                    <li><a href="facilities">
                            <span class="las la-cubes"></span>
                            <span id="sidebar_shrink25">Facilities</span>
                        </a></li>
                    <li><a href="displayformallstaff">
                            <span class="las la-user-nurse"></span>
                            <span id="sidebar_shrink26">Staff</span>
                        </a></li>
                    <li><a href="updateadmin">
                            <span class="las la-user-alt"></span>
                            <span id="sidebar_shrink27">Profile</span>
                        </a></li>
                    <li><a href="displaytask">
                            <span class="las la-clipboard-list"></span>
                            <span id="sidebar_shrink28">Task</span>
                        </a></li>
                    <li><a href="contacttohost">
                            <span class="las la-phone-volume"></span>
                            <span id="sidebar_shrink29">Contact us</span>
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
                        <span id="Dash-logo"><a href="registeradmin" class="text-decoration-none"> Dashboard </a></span>
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
                        <h4>${adminid} ${adminname}</h4>
                        <small>Super admin</small>
                    </div>
                </div>

                <div class="sub-menu-wrap" id="submenuId">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="https://ui-avatars.com/api/?background=random&name=${adminname}+${lastname}" alt="">
                            <h3>${adminname} ${lastname}</h3>
                        </div>
                        <hr>

                        <a href="displaytask" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-calendar-check"></i></span>
                            <span class="icon-name">Task</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="updateadmin" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-user-circle"></i></span>
                            <span class="icon-name">Profile</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="contacttohost" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-phone-volume"></i></span>
                            <span class="icon-name">Contact Us</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a id="myBtn" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-tasks"></i></span>
                            <span id="myBtn1">Appoinment</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                            <!-- <p>></p> -->
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

        <!-- modal -->
        <div id="myModal1" class="modal">
            <div class="modal-content" id="modalcontentId">
                <div class="modal-header">
                    <a id="myModal1" class="close1" data-toggle="modal">Delete</a>
                    <span class="close">&times;</span>
                    <h2>Appoinments</h2>                                
                </div>
                <div class="modal-body">
                    <div class="container" style="overflow-x:auto; overflow-y: auto;">

                        <table id="customers" style="width:220%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>

                                    <th>Date of appoinment</th>
                                    <th>Address</th>
                                    <th>Lab</th>
                                    <th>Mobail no.</th>
                                    <th>Email</th>
                                </tr>
                            </thead>

                            <tr>
                                <%
                                    List<String> l1 = (List<String>) request.getAttribute("l1");
                                    List<String> l2 = (List<String>) request.getAttribute("l2");
                                    List<String> l3 = (List<String>) request.getAttribute("l3");
                                    List<String> l4 = (List<String>) request.getAttribute("l4");
                                    List<String> l5 = (List<String>) request.getAttribute("l5");
                                    List<String> l6 = (List<String>) request.getAttribute("l6");
                                    List<String> l7 = (List<String>) request.getAttribute("l7");
                                    List<String> l8 = (List<String>) request.getAttribute("l8");
                                %>

                                <%                        int i = 0;
                                    for (String o : l1) {

                                        out.print("<tr>"
                                                + "<td>" + l1.get(i) + "</td> "
                                                + "<td>" + l2.get(i) + "</td>"
                                                + "<td>" + l3.get(i) + "</td>"
                                                + "<td>" + l6.get(i) + "</td> "
                                                + "<td>" + l7.get(i) + "</td> "
                                                + "<td>" + l8.get(i) + "</td> "
                                                + "<td>" + l4.get(i) + "</td>"
                                                + "<td>" + l5.get(i) + "</td> "
                                                + "</tr>");
                                        i++;
                                    }
                                %>       
                            </tr>

                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="modal-footer">
                    <h5>These are the appoinments that you have booked</h5>
                </div>
            </div>
        </div>
        <div id="myModal" class="modal fade">
            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header flex-column">
                        <div class="icon-box">
                            <!-- <i class="material-icons">&#xE5CD;</i> -->
                            <!-- <i class="fa-solid fa-trash"></i> -->
                            <i class="las la-trash"></i>
                        </div>						
                        <h4 class="modal-title w-100">Are you sure?</h4>	
                        <button  type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Do you really want to delete these records? This process cannot be undone.</p>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <button type="button" class="btn btn-secondary" id="cancel-btn" data-dismiss="modal">Cancel</button>
                        <div class="search-wrapper" align ="center">
                            <form action="deleteformadmindoctor">
                                <input type="text"
                                       placeholder=" Enter id you want to delete"
                                       name="c" required id="delete-btn3">
                                <input onclick="send()" type="submit" class="btn btn-danger" id="delete-btn" value="delete"/> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>

        let drop12 = document.getElementById("submenuId");
        function dropmenu() {
            drop12.classList.toggle("open-sub-menu");
        }
        let modalcontentId = document.getElementById("modalcontentId");
        let myModal1Shift = document.getElementById("myModal1");
        let sha = document.getElementById("sidebar_shrink1");//sidebar
        let maincardId = document.getElementById("maincardId");//li
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


        // modal
        var modal1 = document.getElementById("myModal1");
        var btn1 = document.getElementById("myBtn1");
        var span1 = document.getElementsByClassName("close")[0];

        btn1.onclick = function () {
            modal1.style.display = "block";
        };

        //        // When the user clicks on <span> (x), close the modal
        span1.onclick = function () {
            modal1.style.display = "none";
            location.reload();
        };

//         When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target === modal1) {
                modal1.style.display = "none";
            }
        };


        function shrink_fun()
        {
            

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
            
            sha.classList.toggle("shrink1");
            shc.classList.toggle("shrink3-side");
            shd.classList.toggle("shrink4");
            she.classList.toggle("shrink5");
            myModal1.classList.toggle("moadalContentShift");
            myModal1Shift.classList.toggle("myModalShift");
        }

    </script>
</html>