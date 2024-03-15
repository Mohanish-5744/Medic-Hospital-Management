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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">

        <!-- Bootstrap links: -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <!-- <link rel="stylesheet" href="admin.css"> -->

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
            .avator{
                background-image: url("https://cdn.pixabay.com/photo/2022/06/15/13/39/man-7263965_960_720.png");
                background-size: cover;
                background-repeat: no-repeat;
                width: 40px;
                height: 40px;
                border-radius: 50%;
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
                font-size: 1.5rem;
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
                /* background-color: #fff; */
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
                height: 150vh;
            }

            .cards{
                display: grid;

                grid-template-columns: repeat(3, 2fr);
                grid-template-rows: repeat(5,2fr);
                grid-gap:2rem;
            }

            .cards button{
                display: flex;
                min-width: 220px;
                min-height: 50px;
                margin-top: 15px;
                align-items: center;
                justify-content: center;
                background: rgb(250, 247, 247);
                background-image: linear-gradient(to bottom right,rgb(237, 233, 237) 0%, rgb(253, 253, 253)  51%, #fff  100%);
                box-shadow: 0 1px 1px 1px rgba(249, 219, 247, 0.664);
                transition: 0.1s;
                border-color: #8390a200;
                /*                border-radius: 40px;*/
                font-size: 1em;
                padding-left: 1rem;
                text-align: center;
            }

            .cards button div span{
                font-size: 1.7rem;
            }
            .cards button div h1{
                font-size: 1.6rem;
            }

            .cards button:hover{

                box-shadow: 3px 9px 16px 0 rgba(37, 118, 106, 0.7);
                min-width: 223px;
                min-height: 53px;
                font-size: 1.1em;
                border-radius: 50px;

                align-items: center;
                justify-content: center;

            }

            .m-v{
                display: block;
                min-height: 50px;
                font-size: 1.2rem;
                margin: 100px;
                margin-top: 8vh;
            }
            .main.mainShift{
                position: relative;
                top:10vh;
            }



            .m-v h3{
                padding-left: 35%;
                margin-top: 10px;
                margin-bottom: 10px;
            }
            .facility-list li{
                margin-top: 15px;
                list-style-type:square;
                text-align: justify-all;

            }


            /* The Modal (background) */
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
            .modal.shiftModalOpen{
                width: 80vw;
                margin-left: 75px;
            }

            /* Modal Content */
            .modal-content {
                position: relative;
                background-color: #fefefe;

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
                color: white;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }

            .modal-header {
                padding: 20px 25px;
                /* background-color: #fdfd91; */
                background-image: linear-gradient(to right, rgb(221, 7, 128) 0%, rgb(181, 106, 243) 100%);

                color: rgb(0, 0, 0);

            }
            .modal-header h2{
                font-size: 2rem;
                font-weight: 1000;
            }
            .modal-body {
                top:50px;
                min-height: 350px;
                margin-top: 10px;
                margin-left: 20px;
            }

            .modal-footer {
                /* position: fixed; */
                padding: 16px 16px;
                background-image: linear-gradient(to right, rgb(164, 7, 221) 0%, rgb(106, 220, 243) 100%);
                z-index: 1;
                color: white;
            }


            #shrinkId{
                display: inline;
            }
            #shrinkId:hover{
                display: inline;
                color: var(--main-color);

            }



            .sidebar.shrink1{
                width: 75px;
            }

            .sidebar-menu ul li span.shrink-element{
                display: none;
            }

            .main-content.shrink4{
                margin-left: 0;
            }
            main.sidebarShrink5{
                display: flex;
                width: 100vw;
                /* margin-left: 10; */
                align-items: center;
                justify-content: center;
                margin-left: 20vw;
            }
            .sidebar-brand h2{
                visibility: visible;
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
            .btn-primary:hover{
                background-color: #2beffde9;
                border: 0;
                color: gray;
            }
            /* Modal  */
            .modal.myModalShift{
                margin-left:1vw;
                width: 100vw;
            }
            .modal-content.moadalContentShift{
                width: 90vw;
                margin-left: 5vw;
            }

        </style>
    </head>
    <body >

        <div class="sidebar" id="sidebar_shrink1">
            <div class="sidebar-brand">
                <h4><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h4>
            </div>

            <div class="sidebar-menu">
                <ul class="list-unstyled">
                    <li><a href="displayformalldoctor" class="text-decoration-none" > 
                            <span class="las la-stethoscope"></span>
                            <span id="sidebar_shrink21">Doctors</span>
                        </a></li> 
                    <li><a href="displayformalluser" class="text-decoration-none">
                            <span class="las la-users"></span>
                            <span id="sidebar_shrink22">Patients</span>

                        </a></li>
                    <li><a href="laboratory" class="text-decoration-none">
                            <span class="las la-x-ray"></span>
                            <span id="sidebar_shrink23">Laboratories</span>
                        </a></li>
                    <li><a href="medicines" class="text-decoration-none">
                            <span class="las la-capsules"></span>
                            <span id="sidebar_shrink24">Medicines</span>
                        </a></li>
                    <li><a href="facilities" class="text-decoration-none">
                            <span class="las la-cubes"></span>
                            <span id="sidebar_shrink25">Facilities</span>
                        </a></li>
                    <li><a href="displayformallstaff" class="text-decoration-none">
                            <span class="las la-user-nurse"></span>
                            <span id="sidebar_shrink26">Staff</span>
                        </a></li>
                    <li><a href="updateadmin" class="text-decoration-none">
                            <span class="las la-user-alt"></span>
                            <span id="sidebar_shrink27">Profile</span>
                        </a></li>
                    <li><a href="displaytask" class="text-decoration-none">
                            <span class="las la-clipboard-list"></span>
                            <span id="sidebar_shrink28">Task</span>
                        </a></li>
                    <li><a href="contacttohost" class="text-decoration-none">
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

            <main id="mainId">
                <div class="m-v" >

                    <div class="cards" id="mvId">




                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">ICU</h5>
                                <p class="card-text">Intensive care units are specialist hospital wards that provide treatment and monitoring for people.<p>
                                    <a href="#" class="btn btn-primary" id="myBtn1">Know more</a>
                            </div>
                        </div>


                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">MICU</h5>
                                <p class="card-text"> The Medical Intensive Care Unit (MICU) cares for patients with a wide variety of serious medical illnesses. </p>
                                <a href="#" class="btn btn-primary"  id="myBtn2">Know more</a>
                            </div>
                        </div>
                        <!--  id="myBtn1" -->

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">OPD</h5>
                                <p class="card-text">An OPD is the primary point of communication between the patient and the medical professionals.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn3">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">IPD</h5>
                                <p class="card-text">Location in the hospital where patients are accommodated after admitted, based on doctor's assesment.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn4">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">NICU</h5>
                                <p class="card-text">The NICU is a nursery in a hospital that provides around-the-clock care to sick or preterm babies. </p>
                                <a href="#" class="btn btn-primary"  id="myBtn5">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Organ Bank</h5>
                                <p class="card-text">It is the act of giving an organ to save or improve the life of someone who needs a transplant.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn6">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Ambulance</h5>
                                <p class="card-text">An ambulance is a vehicle equipped to provide emergency care to people to get them to hospital.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn7">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Eye Bank</h5>
                                <p class="card-text">Eye banks are the institutions responsible for collecting donor corneas distributing specialists.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn8">Know more</a>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Blood Bank</h5>
                                <p class="card-text">A blood bank ensures that hospitals have a safe, reliable blood supply for patients in need.</p>
                                <a href="#" class="btn btn-primary"  id="myBtn9">Know more</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="myModal1" class="modal">
                    <div class="modal-content" id="modalContentId1">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>ICU</h2>                                
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. An intensive care unit (ICU), also known as an intensive therapy unit.</li>
                                <li>2. Intensive care units cater to patients with severe or life-threatening illnesses and injuries.</li>
                                <li>3. Require constant care, close supervision from life support equipment and medication in order to ensure normal bodily functions.</li>
                            </ul>
                            <br>
                            <h2>Benefits of ICU</h2>
                            <br>
                            <ul>
                                <li>1. Seriously ill patients are closely monitored.</li>
                                <li>2. Special equipment is available to aid in patient monitoring, stabilizing and recovery.</li>
                                <li>3. Specially trained nurses work around the clock.</li>
                                <li>4. The ratio of nurse to patient is 1:2 usually.</li>
                                <li>5. There are resident doctors on call around the clock.</li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>

                <div id="myModal2" class="modal">
                    <div class="modal-content" id="modalContentId2">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>MICU</h2>                                
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. A MICU is a location in the hospital where critically ill patients receive care.</li>
                                <li>2. As a medical ICU, we care for patients with a variety of conditions, many of them life-threatening.</li>
                                <li>3. As experts in managing these conditions, we work together as a team to care for each patient.</li>
                            </ul>
                            <br>
                            <h2>Benefits of MICU</h2>
                            <br>
                            <ul>
                                <li>1. The MICU offer continuous surveillance and are highly specialized to render permanent and regulated care for patients in these units. </li>
                                <li>2. The staffs of these units are highly professional and well trained to maintain effective checks for long and continuous time periods. </li>
                                <li>3. The multidisciplinary team approach ensures that the highest quality of critical care is provided to the patient.</li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal3" class="modal">
                    <div class="modal-content" id="modalContentId3">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>OPD</h2>                                
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. The full form of OPD is the Outpatient Department. </li>
                                <li>2. An OPD is structured as the primary point of communication between the patient and the medical professionals in a medical department.</li>
                                <li>3. OPD is a treatment wherein certain treatment or diagnosis of a certain type of illness upon the advice of a medical practitioner.</li>
                                <li>4. This involves the patient visiting the clinic or any of the doctors' consultation rooms.</li>
                            </ul>
                            <br>
                            <h2>Benefits of OPD</h2>
                            <br>
                            <ul>
                                <li>1. The outpatient department is a crucial first step for any medical treatment. </li>
                                <li>2. It helps the patient recover or improves from a certain health condition.</li>
                                <li>3.  OPD is the section that also provides additional services like diagnosis, lab tests, precautionary advice, etc.</li>

                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>



                <div id="myModal4" class="modal">
                    <div class="modal-content" id="modalContentId4">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>IPD</h2>                                
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. IPD full form is Invasive Pneumococcal disease. </li>
                                <li>2. In this case patient admitted to hospital for 24 hrs.</li>
                                <li>3. IPD is a department in a hospital that takes care of patients admitted in the hospital for at least a night.</li>
                                <li>4. An Inpatient Ward or Department is fully equipped with medical equipment and beds.</li>
                            </ul>
                            <br>
                            <h2>Benefits of IPD Management using HIMS</h2>
                            <br>
                            <ul>
                                <li>1. Preparation of discharge summary. </li>
                                <li>2. Management of beds and allocation for the same patient.</li>
                                <li>3. Registration process during patient admission.</li>
                                <li>4. Billing and preparation of reports.</li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal5" class="modal">
                    <div class="modal-content" id="modalContentId5">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>NICU</h2>
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. The full form of NICU is the Neonatal Intensive Care Unit. </li>
                                <li>2. The birth of a baby is a wonderful and very complex process. Many physical and emotional changes occur for both mother and baby.</li>
                                <li>3. A baby must make many physical adjustments to life outside the mother's body.</li>
                                <li>4. Leaving the uterus means that a baby can no longer depend on the mother's blood supply and placenta for important body functions.</li>
                            </ul>
                            <br>
                            <h2>Who will care for your baby in the NICU?</h2>
                            <br>
                            <ul>
                                <li>1. Neonatologist. </li>
                                <li>2. Neonatal fellow.</li>
                                <li>3. Pediatric resident. </li>
                                <li>4. Neonatal nurse practitioner. </li>
                                <li>5. Respiratory therapist.</li>
                                <li>6. Lactation consultants.</li>
                                <li>7. Pharmacists.</li>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal6" class="modal">
                    <div class="modal-content" id="modalContentId6">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Types of Donation</h2>
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. Living donation. </li>
                                <li>2. Deceased donation.</li>
                                <li>3. Vascularized Composite Allografts (VCA).</li>
                                <li>4. Pediatric donation.</li>
                            </ul>
                            <br>
                            <h2>Types of Organ Donors</h2>
                            <br>
                            <ul>
                                <li>1. Directed. </li>
                                <li>2. Non-directed.</li>
                                <li>3. Paired Exchange. </li>

                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal7" class="modal">
                    <div class="modal-content" id="modalContentId7">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Ambulance</h2>
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. An ambulance is a medically equipped vehicle which transports patients to treatment facilities, such as hospitals. </li>
                                <li>2. Typically, out-of-hospital medical care is provided to the patient during the transport.</li>
                                <li>3. Ambulances are used to respond to medical emergencies by emergency medical services (EMS)..</li>
                                <li>4. For this purpose, they are generally equipped with flashing warning lights and sirens.</li>
                            </ul>
                            <br>
                            <h2>Types of Ambulance Available</h2>
                            <br>
                            <ul>
                                <li>1. Basic Life Support Ambulance. </li>
                                <li>2. Advance Life Support Ambulance.</li>
                                <li>3. Patient Transfer Ambulance. </li>
                                <li>4. Mortuary Ambulance.</li>

                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal8" class="modal">
                    <div class="modal-content" id="modalContentId8">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>What is meant by Eye Bank</h2>
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. Eye banks are the institutions responsible for collecting (harvesting) and processing donor corneas, and for distributing them to trained corneal graft surgeons. </li>
                                <li>2. Eye banks are regulated and part of the local health system; they may be attached to a hospital or housed in a separate building.</li>
                                <li>3. Cornea harvesting is the surgical removal from a deceased person of either the whole eye (enucleation) or the cornea (in situ corneal excision). </li>
                                <li>4. This can be done by appropriately trained eye care personnel (eye bank technicians, ophthalmology residents, ophthalmologists, or general practitioners) in a variety of settings, including hospitals, homes, and funeral grounds.</li>
                            </ul>
                            <br>
                            <h2>Benefits of Donating Eyes</h2>
                            <br>
                            <ul>
                                <li>1. Donated eyes are used to restore vision in people suffering from corneal blindness. </li>
                                <li>2. Cornea is the clear tissue covering the front of the eye. </li>
                                <li>3. If it is impaired, vision is reduced or lost. In such cases, vision can be restored by a simple surgery called keratoplasty wherein the cornea is replaced. </li>

                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <div id="myModal9" class="modal">
                    <div class="modal-content" id="modalContentId9">
                        <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Principle of Blood Banking</h2>
                        </div>
                        <div class="modal-body">
                            <ul>
                                <li>1. The collection, testing, processing, and preparation of blood and blood components. </li>
                                <li>2. The selection of the most appropriate products and transfusion practice.</li>
                                <li>3. The monitoring of the effectiveness of transfusion</li>

                            </ul>
                            <br>
                            <h2>Different Types of Blood Bank</h2>
                            <br>
                            <ul>
                                <li>1. Government. </li>
                                <li>2. Private.</li>
                                <li>3. Runnign under NGO. </li>

                            </ul>
                        </div>
                        <div class="modal-footer">
                            <h3>Hospital Laboratories Management</h3>
                        </div>
                    </div>
                </div>


                <script>

                    // Get the modal
                    var modal1 = document.getElementById("myModal1");
                    var modal2 = document.getElementById("myModal2");
                    var modal3 = document.getElementById("myModal3");
                    var modal4 = document.getElementById("myModal4");
                    var modal5 = document.getElementById("myModal5");
                    var modal6 = document.getElementById("myModal6");
                    var modal7 = document.getElementById("myModal7");
                    var modal8 = document.getElementById("myModal8");
                    var modal9 = document.getElementById("myModal9");

                    // Get the button that opens the modal
                    var btn1 = document.getElementById("myBtn1");
                    var btn2 = document.getElementById("myBtn2");
                    var btn3 = document.getElementById("myBtn3");
                    var btn4 = document.getElementById("myBtn4");
                    var btn5 = document.getElementById("myBtn5");
                    var btn6 = document.getElementById("myBtn6");
                    var btn7 = document.getElementById("myBtn7");
                    var btn8 = document.getElementById("myBtn8");
                    var btn9 = document.getElementById("myBtn9");

                    // Get the <span> element that closes the modal
                    var span1 = document.getElementsByClassName("close")[0];
                    var span2 = document.getElementsByClassName("close")[1];
                    var span3 = document.getElementsByClassName("close")[2];
                    var span4 = document.getElementsByClassName("close")[3];
                    var span5 = document.getElementsByClassName("close")[4];
                    var span6 = document.getElementsByClassName("close")[5];
                    var span7 = document.getElementsByClassName("close")[6];
                    var span8 = document.getElementsByClassName("close")[7];
                    var span9 = document.getElementsByClassName("close")[8];

                    // When the user clicks the button, open the modal 
                    btn1.onclick = function () {
                        modal1.style.display = "block";
                    };
                    btn2.onclick = function () {
                        modal2.style.display = "block";
                    };

                    // When the user clicks the button, open the modal 
                    btn3.onclick = function () {
                        modal3.style.display = "block";
                    };

                    btn4.onclick = function () {
                        modal4.style.display = "block";
                    };
                    btn5.onclick = function () {
                        modal5.style.display = "block";
                    };
                    btn6.onclick = function () {
                        modal6.style.display = "block";
                    };
                    btn7.onclick = function () {
                        modal7.style.display = "block";
                    };
                    btn8.onclick = function () {
                        modal8.style.display = "block";
                    };
                    btn9.onclick = function () {
                        modal9.style.display = "block";
                    };


                    //        // When the user clicks on <span> (x), close the modal
                    span1.onclick = function () {
                        modal1.style.display = "none";
                        location.reload();
                    };
                    span2.onclick = function () {
                        modal2.style.display = "none";
                        location.reload();
                    };
                    //
                    //        // When the user clicks on <span> (x), close the modal
                    span3.onclick = function () {
                        modal3.style.display = "none";
                        location.reload();

                    };

                    span4.onclick = function () {
                        modal4.style.display = "none";
                        location.reload();

                    };
                    span5.onclick = function () {
                        modal5.style.display = "none";
                        location.reload();

                    };
                    span6.onclick = function () {
                        modal6.style.display = "none";
                        location.reload();

                    };
                    span7.onclick = function () {
                        modal7.style.display = "none";
                        location.reload();

                    };
                    span8.onclick = function () {
                        modal8.style.display = "none";
                        location.reload();

                    };
                    span9.onclick = function () {
                        modal9.style.display = "none";
                        location.reload();

                    };

                    //         When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target === modal1) {
                            modal1.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal2) {
                            modal2.style.display = "none";
                        }
                    };
                    //        // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target === modal3) {
                            modal3.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal4) {
                            modal4.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal5) {
                            modal5.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal6) {
                            modal6.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal7) {
                            modal7.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal8) {
                            modal8.style.display = "none";
                        }
                    };
                    window.onclick = function (event) {
                        if (event.target === modal9) {
                            modal9.style.display = "none";
                        }
                    };
                </script>
            </main>

        </div>
        <script>

            let drop12 = document.getElementById("submenuId");
            function dropmenu() {
                drop12.classList.toggle("open-sub-menu");
            }

            let sha = document.getElementById("sidebar_shrink1");//sidebar
            let shc = document.getElementById("sidebar_shrink3");//header
            let shd = document.getElementById("sidebar_shrink4");//main-content
            let mainId = document.getElementById("mainId");//main

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
            // let mainId =document.getElementById("mainId");

            // modal class shift
            let modalId1 = document.getElementById("myModal1");
            let modalId2 = document.getElementById("myModal2");
            let modalId3 = document.getElementById("myModal3");
            let modalId4 = document.getElementById("myModal4");
            let modalId5 = document.getElementById("myModal5");
            let modalId6 = document.getElementById("myModal6");
            let modalId7 = document.getElementById("myModal7");
            let modalId8 = document.getElementById("myModal8");

            let modalcontentId1 = document.getElementById("modalcontentId1");
            let myModal1Shift1 = document.getElementById("myModal1");
            let modalcontentId2 = document.getElementById("modalcontentId2");
            let myModal1Shift2 = document.getElementById("myModal2");
            let modalcontentId3 = document.getElementById("modalcontentId3");
            let myModal1Shift3 = document.getElementById("myModal3");
            let modalcontentId4 = document.getElementById("modalcontentId4");
            let myModal1Shift4 = document.getElementById("myModal4");
            let modalcontentId5 = document.getElementById("modalcontentId5");
            let myModal1Shift5 = document.getElementById("myModal5");
            let modalcontentId6 = document.getElementById("modalcontentId6");
            let myModal1Shift6 = document.getElementById("myModal6");
            let modalcontentId7 = document.getElementById("modalcontentId7");
            let myModal1Shift7 = document.getElementById("myModal7");
            let modalcontentId8 = document.getElementById("modalcontentId8");
            let myModal1Shift8 = document.getElementById("myModal8");
            let modalcontentId9 = document.getElementById("modalcontentId9");
            let myModal1Shift9 = document.getElementById("myModal9");

            function shrink_fun()
            {

                xy0.classList.toggle("shrink_logo");
                xy1.classList.toggle("shrink-element");
                xy2.classList.toggle("shrink-element");
                xy3.classList.toggle("shrink-element");
                xy4.classList.toggle("shrink-element");
                xy5.classList.toggle("shrink-element");
                xy6.classList.toggle("shrink-element");
                xy7.classList.toggle("shrink-element");
                xy8.classList.toggle("shrink-element");
                xy9.classList.toggle("shrink-element");
                // mvId.classList.toggle("m-vShift");

                modalId1.classList.toggle("shiftModalOpen");
                modalId2.classList.toggle("shiftModalOpen");
                modalId3.classList.toggle("shiftModalOpen");
                modalId4.classList.toggle("shiftModalOpen");
                modalId5.classList.toggle("shiftModalOpen");
                modalId6.classList.toggle("shiftModalOpen");
                modalId5.classList.toggle("shiftModalOpen");
                modalId8.classList.toggle("shiftModalOpen");

                sha.classList.toggle("shrink1");
                shc.classList.toggle("shrink3-side");
                shd.classList.toggle("shrink4");
                // mainId.classList.toggle("mainShift");

                // changes
                myModal1.classList.toggle("moadalContentShift");
                myModal1Shift1.classList.toggle("myModalShift");
                myModal2.classList.toggle("moadalContentShift");
                myModal1Shift2.classList.toggle("myModalShift");
                myModal3.classList.toggle("moadalContentShift");
                myModal1Shift3.classList.toggle("myModalShift");
                myModal4.classList.toggle("moadalContentShift");
                myModal1Shift4.classList.toggle("myModalShift");
                myModal5.classList.toggle("moadalContentShift");
                myModal1Shift5.classList.toggle("myModalShift");
                myModal6.classList.toggle("moadalContentShift");
                myModal1Shift6.classList.toggle("myModalShift");
                myModal7.classList.toggle("moadalContentShift");
                myModal1Shift7.classList.toggle("myModalShift");
                myModal8.classList.toggle("moadalContentShift");
                myModal1Shift8.classList.toggle("myModalShift");
                myModal9.classList.toggle("moadalContentShift");
                myModal1Shift9.classList.toggle("myModalShift");
            }

        </script>
    </body>
</html>