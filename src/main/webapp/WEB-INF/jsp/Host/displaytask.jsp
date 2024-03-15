









<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                height: 42px;
                /*width: 50%;*/
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
                font-size: 1.1rem;
                /*text-indent: 2rem;*/
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
            #customers {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                padding: 25px;
            }

            #customers tr:nth-child(even){
                background-color: #f2f2f2;
            }

            #customers tr:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #ccc;
                color: black;
                font-weight: 800;
                gap:40px;
                border-radius: 1px;
            }


            /*            body {
                            font-family: 'Varela Round', sans-serif;
                        }*/
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
                width: 100px;
                border: none;
                height: 40px;
                border-radius: 100px;
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
            .trigger-btn {
                display: inline-block;
                margin: 100px auto;
            }
            .close-container1{
                position: absolute;
                margin: auto;
                bottom: 15vh;
                right: -2vw;
                width: 50px;
                height: 50px;
                margin-top: 200px;
                cursor: pointer;
            }

            .leftright{
                height: 4px;
                width: 30px;
                position: absolute;
                margin-top: 24px;
                background-color: blue;
                border-radius: 2px;
                transform: rotate(45deg);
                transition: all .3s ease-in;
            }

            .rightleft{
                height: 4px;
                width: 30px;
                position: absolute;
                margin-top: 24px;
                background-color: blue;
                border-radius: 2px;
                transform: rotate(-45deg);
                transition: all .3s ease-in;
            }

            label1{
                color: black;
                font-family: Helvetica, Arial, sans-serif;
                font-size: 1em;
                text-transform: uppercase;
                letter-spacing: 5px;
                transition: all .3s ease-in;
                opacity: 0;
            }
            .close{
                margin: 40px 0 0 -22px;
                position: absolute;
            }

            .close-container1:hover .leftright{
                transform: rotate(-45deg);
                background-color: #F25C66;
            }
            .close-container1:hover .rightleft{
                transform: rotate(45deg);
                background-color:#F25C66;
            }
            .close-container1:hover label{
                opacity: 1;
            }
            .container{
                background:white;
                border:solid grey;
                /*margin-top: 5%;*/
                margin-left: 9%;
                margin-right: 25%;
                min-height: 580px;
                border-radius: 8px;
                width: 60vw;
                height: 76vh;
            }
            .container.ShiftContainer{
                margin: 10vh auto;
                margin-top:0;
                /*top:10vh;*/
            }
            /* .container:hover{
                 border-radius:8px;
                 
                 box-shadow: 0px 0px 10px #0ff;
                
             }        */
            .container-image{
                margin-top:3%;
                margin-left: 34%;
                margin-bottom: 3%;
            }
            .container-content{
                border: solid;
                border-width: 1px;
                margin-right: 10%;
                margin-top: 2%;
                margin-left: 15%;
                padding-left:10px;
                padding-top: 5px;
                padding-bottom: 5px;
                border-radius: 3px;
                border-color: black;

            }
            .container-content:hover{
                box-shadow: 0px 0px 3px #00425A;
                border-radius: 3px;

            }
            input[type=submit]{
                position: relative;
                background-color: #ADE792;
                border:solid;
                color: black;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 5px;
            }


            input[type=submit]:hover{
                background-color: #F3ECB0;
                border:solid;
                color: black;
                padding: 16px 32px;
                margin: 4px 2px;
                cursor: pointer;
            }
            .task{
                position: relative;
                /*top:10vh;*/
                /*bottom: 5vh;*/
                /*right: -10vw;*/
                display:inline;
                /*border-radius: 30px;*/
            }
            .task1{

                text-decoration: solid;
                text-align: center;

            }
            .task2{
                position: relative;
                top:-72vh;
                right:1vw;
                /*top:0vh;*/
                /*bottom: 5vh;*/
                right: -24vw;

                text-decoration: solid;
                text-align: center;
            }
            .task.taskShift{
                position:absolute;
                top:11.2vh;
                right:30vw;
            }

            .container-text{
                text-align: center;
                /*margin-top: 5%;*/
            }
            .task-btn{
                display:grid;
                width: 100%;
                position:relative;
                margin: auto;
                top:3vh;
                align-items: center;
                justify-content: center;
                margin-left:4vw;
                grid-template-columns: 1fr 1fr;
                grid-gap:1rem;
                /*background-color: red;*/
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
                    <li><a href="displayadmin" class="text-decoration-none"> 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Admin</span>
                        </a></li> 

                    <li><a href="displaytask_1" class="text-decoration-none">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink22">Task</span>
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
                        <span id="Dash-logo"><a href="loginformhostredirect" class="text-decoration-none"> Dashboard </a></span>

                    </label>                    
                </h2>
                <!-- </div> -->

                <form action="searchuser">
                    <div class="search-wrapper">
                        <span class="las la-search">
                            <input type="search" placeholder="Search here" name="a"/>
                        </span>
                    </div>
                </form>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=Host" alt="" height="40" width="40">
                    <div>
                        <h6><b>Host</b>
                            <br>
                            <small>Host</small>
                        </h6>
                    </div>
                </div>

                <div class="sub-menu-wrap" id="submenuId">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="https://ui-avatars.com/api/?background=random&name=Host" alt="">
                            <h3>Host</h3>
                        </div>
                        <hr>

                        <a href="displayadmin" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-calendar-check"></i></span>
                            <span class="icon-name">Admin</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                        <a href="displaytask_1" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-user-circle"></i></span>
                            <span class="icon-name">Task</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>

                        <a href="" class="sub-menu-link" class="text-decoration-none">
                            <span class="icon-menu-left"><i class="las la-sign-out-alt"></i></span>
                            <span class="icon-name">Sign out</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                            <!-- <p>></p> -->
                        </a>
                    </div>
                </div>

            </header>


            <main id="sidebar_shrink5">
                <div class="container" id="containerId">
                    <div class="container-image">
                        <img src="https://i.postimg.cc/B6q9GcyG/Task.jpg" alt="Self">
                    </div>

                    <div class="container-content">
                        <b>Name : ${name}</b>
                    </div>
                    <div class="container-content">
                        <b>E-mail : ${email}</b>
                    </div>
                    <div class="container-content">
                        <b>Subject : ${subject}</b>
                    </div>
                    <div class="container-content">
                        <b>Message : ${message}</b>
                    </div>
                    <div class="container-text">
                        <h1>"Once a task is just begun, </h1>
                        <h1>Never leave it till it's done"</h1>
                    </div>
                    <div class="task-btn">
                        <form action="previousproblem_1">
                            <div class="task">
                                <input type="submit" value="<< Previous Task">
                            </div>
                        </form>
                        <form action="nextproblem_1">
                            <div class="task1">
                                <input type="submit" value=" Next Task >>">
                            </div>
                        </form>

                        <div class="task2">
                            <a href="#myModal" class="trigger-btn" data-toggle="modal"><div class="close-container1">
                                    <div class="leftright"></div>
                                    <div class="rightleft"></div>
                                    <!--<label class="close" align="left">close</label>-->
                                </div></a>
                        </div>

                    </div>
            </main>
            <div id="myModal" class="modal fade">
                <div class="modal-dialog modal-confirm">
                    <div class="modal-content">
                        <div class="modal-header flex-column">
                            <div class="icon-box">
                                <i class="material-icons"></i>
                            </div>						
                            <h4 class="modal-title w-100">Are you sure?</h4>	
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        </div>
                        <div class="modal-body">
                            <p>Do you really want to delete these records? This process cannot be undone.</p>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <form action="deleteproblem_1">
                                <a href="deleteproblem_1" ><button type="button" class="btn btn-danger">Delete</button> </a>
                            </form>
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

        let sha = document.getElementById("sidebar_shrink1");//sidebar
        let shz = document.getElementById("sampleId");//li
        let shc = document.getElementById("sidebar_shrink3");//header
        let shd = document.getElementById("sidebar_shrink4");//main-content
        let she = document.getElementById("sidebar_shrink5");//main
        let containerId = document.getElementById("containerId");//main

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
        let taskId = document.getElementById("sidebar_shrink59");


        function shrink_fun()
        {

            sha.classList.toggle("shrink1");
            shc.classList.toggle("shrink3-side");
            shd.classList.toggle("shrink4");


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

            she.classList.toggle("shrink5");
            taskId.classList.toggle("taskShift");

            containerId.classList.toggle("ShiftContainer");
        }

    </script>

    <!--let taskId=document.getElementById("sidebar_shrink5");-->

</html>

