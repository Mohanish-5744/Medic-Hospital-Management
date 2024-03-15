<%-- 
    Document   : med_update
    Created on : 09-Feb-2023, 7:01:05 pm
    Author     : HP
--%>


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

            /*.sidebar-menu a span:first-child:hover{
                color: #fff;
                background-color: var(--main-color);
                border-radius: 30px 0px 0px 30px;
                padding-top:1rem;
                transition: 0.3s;
            }*/
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
                transition: all 0.4s ease;
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
                min-height: 650px;
            }

            .container{
                /*display: flex;*/
                padding: 2.5%;
                padding-left: 5%;
                background: #EAFDFC;
                box-shadow: 0px 0px 5px #00425A;
                margin-top: 2%;
                margin-left:2%;
                margin-right: 2%;
                /*width:650px;*/
                height: 680px;
                /*min-height: 500px;*/
            }
            .container-box{
                margin-top:10%;
                background-color: cyan;
                height: 250px;

            }


            input[type=submit]{
                background-color: #82AAE3;
                margin-top: 10px;
                ;
                border:solid;
                color: black;
                padding: 2px;
                text-decoration: none;
                padding: 5px 5px;
                margin: 2px 2px;
                cursor: pointer;
                border-radius: 5px;
            }

            input[type=submit]:hover{
                background-color: #F3ECB0;
                border:solid;
                color: black;
                padding: 8px 8px;
                margin: 4px 2px;
                cursor: pointer;
            }


            .card {
                margin: auto;
                margin-top: 2rem;
                display:flex;
                width: 250px;
                height: 230px;
                transform-style: preserve-3d;
                transition: all 1s ease;
            }

            .card-serial {
                margin: auto;
                margin-top: 2rem;
                display:flex;
                width: 250px;
                height: 230px;
                transform-style: preserve-3d;
                transition: all 1s ease;
            }

            .card:hover{
                transform:rotateY(180deg);
            }

            .front {
                padding: 25px;
                position: absolute;
                width: 250px;
                height: 230px;
                backface-visibility: hidden;
                background: #BFEAF5;
                border-radius: 2px;
                /*        box-shadow: 0px 0px 5px #00425A;*/
            }
            input[type=text1]::placeholder{
                font-size: 15px;
                color: #00425A;
                text-align: center;

            }
            h2{
                text-align: center;
            }

            .card-image{
                margin-left: 10px;
                margin-bottom: 10px;
                align-content: center;

            }
            .back {
                position: absolute;
                padding: 25px;
                width: 250px;
                height: 230px;
                backface-visibility: hidden;
                background:#91D8E4;
                transform: rotateY(180deg);
                border-radius: 2px;
                box-shadow: 0px 0px 5px #473C33;
            }
            .head-box{
                background-color: #E5E0FF;
                margin-left: 34%;
                margin-right: 39%;
                padding: 10px;
                border-radius: 10px;
            }
            .head-box:hover{
                background-color: #D2DAFF;
            }

            .cards{
                display: grid;
                grid-template-columns: 1fr 1fr 1fr;
                grid-template-rows: 1fr 1fr 1fr;
                grid-gap: 10px;
                margin: auto;
                width: 100%;
                height: 100%;
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

            <div class="sidebar-menu">
                <ul id="sampleId">
                    <li><a href="displaymedicines"  class="text-decoration-none"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Display Medicines</span>
                        </a></li> 
                    <li><a href="medicinesregisteration" class="text-decoration-none">
                            <span class="las la-users"></span>
                            <span id="sidebar_shrink22">Add Medicine</span>

                        </a></li>
                    <li><a href="updatemedicines" class="text-decoration-none">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Update Medicine</span>
                        </a></li>
                    <li><a href="" class="text-decoration-none">
                            <span class="las la-capsules"></span>
                            <span id="sidebar_shrink24">Delete Medicine</span>
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

                <form action="searchmedicinessingle">
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
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="updateadmin" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-user-circle"></i></span>
                            <span class="icon-name">Profile</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="contacttohost" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-phone-volume"></i></span>
                            <span class="icon-name">Contact Us</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="signout" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-sign-out-alt"></i></span>
                            <span class="icon-name">Sign out</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                    </div>
                </div>
            </header>

            <main id="sidebar_shrink5">
                <div class="container">
                    <div class="head-box">
                        <h2>Update Medicines</h2>
                    </div>
                    <div class="cards">

                        <div class="card-serial">
                            <div class="front">
                                <div class="card-image">
                                    <img src="https://i.postimg.cc/k4tnqfVP/Picture2.png" alt="p">  
                                </div>               
                                <h2>Serial Number<input type="text1" placeholder="${serial_no}"></h2>  
                            </div>
                            <div class="back">
                                <div class="card-image">
                                    <img src="https://i.postimg.cc/g084mJgw/Update.png"" alt="p">  
                                </div>

                                <h2>Update Serial Number<input type="text" placeholder="Input Update Serial No.."></h2>
                                <input type="submit" value="Clik here to Update Serial Number">
                            </div>
                        </div>

                        <form action = "updatemedicinestypeofmedicinesname">
                            <div class="card">
                                <div class="front">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/qRjqXzcq/types-of-medicines.png" alt="p">  
                                    </div>               
                                    <h2>Types of Medicines<input type="text1" placeholder="${type_of_medicines_name}"></h2>  
                                </div>
                                <div class="back">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/g084mJgw/Update.png"" alt="p">  
                                    </div>

                                    <h2>Update Type of Medicine<input type="text" name="a" placeholder="Input Update Types of Medicine."></h2>
                                    <input type="submit" value="Clik to Update Types of Medicine">
                                </div>
                            </div> 
                        </form>

                        <form action = "updatemedicinesmedicinename">    
                            <div class="card">
                                <div class="front">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/j2vpjgYd/Name.jpg" alt="p">  
                                    </div>               
                                    <h2>Medicine Name<input type="text1" placeholder="${medicine_name}"></h2>  
                                </div>
                                <div class="back">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/g084mJgw/Update.png"" alt="p">  
                                    </div>

                                    <h2>Update Medicine Name<input type="text" name="b" placeholder="Input Update Medicine Name."></h2>
                                    <input type="submit" value="Clik here to Update Medicine Name">
                                </div>
                            </div>
                        </form>

                        <form action="updatemedicinesuseofmedicine">
                            <div class="card">
                                <div class="front">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/MGgNnmMb/use.jpg" alt="p">  
                                    </div>               
                                    <h2>Use of Medicine<input type="text1" placeholder="${use_of_medicine}"></h2>  
                                </div>
                                <div class="back">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/g084mJgw/Update.png"" alt="p">  
                                    </div>

                                    <h2>Update Use of Medicine<input type="text" name="c" placeholder="Input Update Use of Medicine"></h2>
                                    <input type="submit" value="Clik here Update Use of Medicine">
                                </div>
                            </div>
                        </form>

                        <form action="updatemedicinestotalavailable" >
                            <div class="card">
                                <div class="front">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/9XD1kG7n/total.jpg" alt="p">  
                                    </div>               
                                    <h2>Total Available<input type="text1" placeholder="${total_available}"></h2>  
                                </div>
                                <div class="back">
                                    <div class="card-image">
                                        <img src="https://i.postimg.cc/g084mJgw/Update.png"" alt="p">  
                                    </div>

                                    <h2>Update Total Available<input type="text" name="d" placeholder="Input Update Total Available."></h2>
                                    <input type="submit" value="Clik here to Update Doctors No.">
                                </div>
                            </div>
                        </form
                    </div>                    
                </div>

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
