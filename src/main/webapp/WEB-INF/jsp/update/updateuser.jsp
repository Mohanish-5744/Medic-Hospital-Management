

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">

        <!-- <link rel="stylesheet" href="profile.css"> -->
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
                background-color: #fff;

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
                color: #c91616;
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
            /* The Modal (background) */
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
                padding: 100px 110px;
            }

            .modal-footer {
                /* position: fixed; */
                padding: 16px 16px;
                background-image: linear-gradient(to right, rgb(164, 7, 221) 0%, rgb(106, 220, 243) 100%);
                z-index: 1;
                color: white;
            }
            input[type=text1], select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type=submit] {
                width: 100%;
                background-image: linear-gradient(to right, #00cc00 0%, #ccffcc 100%);
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-image: linear-gradient(to left, #00cc00 0%, #ccffcc 100%);
            }
            input[type="email"], select, textarea {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="date"], select, textarea {
                font-size: 1.4rem;
                ;
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
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
                color: #222222;
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
                font-size: 1.6rem;
                position:relative;

                top:-1px;
                left:-12px;
            }

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
                <h2 ><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h2>
            </div>

            <div class="sidebar-menu">
                <ul id="sampleId">
                    <li><a href="displayformalldoctor" class="text-decoration-none"> 
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

                <form action="searchstaff">
                    <div class="search-wrapper">
                        <span class="las la-search">
                            <input type="search" placeholder="Search here" name="a"/>
                        </span>
                    </div>
                </form>

                <div class="user-wrapper">

                    <img onclick="dropmenu()" src="https://ui-avatars.com/api/?background=random&name=${adminname}+${alastname}" alt="" height="40" width="40">
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
                            <img src="https://ui-avatars.com/api/?background=random&name=${adminname}+${alastname}" alt="">
                            <h3>${adminname} ${alastname}</h3>
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
            </main>
            <div class="m-v">

                <div class="cards">
                    <div class="profile-image">
                        <img src="https://ui-avatars.com/api/?background=random&name=${username}+${userlastname}" alt="">
                        <!-- <span class="photo"></span> -->
                    </div>
                    <div class="container">

                        <div class="single-card" id="basic-card">
                            <span class="card-heading">Basic info</span>
                            <div class="info-list">
                                <ul>
                                    <li> <a href="#"><button class="display-info-line" >
                                                <span class="discribe-field">First name</span>
                                                <span class="field-value">${firstname}</span>
                                                <span class="arrow" id="myBtn2"><span class="las la-angle-right"></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Last name</span>
                                                <span class="field-value">${lastname}</span>
                                                <span class="arrow" id="myBtn3"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Birth date</span>
                                                <span class="field-value">${dateofbirth}</span>
                                                <span class="arrow" id="myBtn4"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                </ul></div>

                        </div>
                        <div class="single-card" id="contact-card">
                            <span>Contact info</span>
                            <div class="info-list">
                                <ul>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Email</span>
                                                <span class="field-value">${email}</span>
                                                <span class="arrow" id="myBtn5"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Phone number</span>
                                                <span class="field-value">${mobailno}</span>
                                                <span class="arrow" id="myBtn6"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                </ul></div>
                        </div>
                        <div class="single-card" id="contact-card">
                            <span>Address info</span>
                            <div class="info-list">
                                <ul>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Address</span>
                                                <span class="field-value">${address}</span>
                                                <span class="arrow" id="myBtn7"><span class="las la-angle-right"></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Pincode</span>
                                                <span class="field-value">${pincode}</span>
                                                <span class="arrow" id="myBtn8"> <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                </ul></div>
                        </div>



                        <div class="single-card" id="medical-card">
                            <span>Medical info</span>
                            <div class="info-list">
                                <ul>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Age</span>
                                                <span class="field-value">${age} years</span>
                                                <span class="arrow" id="myBtn9"> <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Heigth</span>
                                                <span class="field-value">${height} cm</span>
                                                <span class="arrow" id="myBtn10">  <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Weigth</span>
                                                <span class="field-value">${weight} Kg</span>
                                                <span class="arrow" id="myBtn11"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Gender</span>
                                                <span class="field-value">${gender}</span>
                                                <span class="arrow" > <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                </ul></div>
                        </div>

                        <div class="single-card" id="medical-card">
                            <span>Other Info</span>
                            <div class="info-list">
                                <ul>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Id</span>
                                                <span class="field-value">${id} years</span>
                                                <span class="arrow" > <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Password</span>
                                                <span class="field-value">${password}</span>
                                                <span class="arrow" id="myBtn12">  <span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">medical History</span>
                                                <span class="field-value">${medicalhistory}</span>
                                                <span class="arrow" id="myBtn13"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                    <li> <a href="#"><button class="display-info-line">
                                                <span class="discribe-field">Adhar Number</span>
                                                <span class="field-value">${adharnumber}</span>
                                                <span class="arrow" id="myBtn14"><span class="las la-angle-right" ></span></span>
                                            </button></a></li>
                                </ul></div>

                        </div>

                    </div>

                </div>

                <form action = "updateuserfirstname_1">
                    <div id="myModal2" class="modal">
                        <div class="modal-content" id="modalcontentId2">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>First Name</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New First Name</label>
                                <input type="text1" id="lname" name="a" placeholder="Enter your name..">
                                <a href = ""><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>


                <form action = "updateuserlastname_1">
                    <div id="myModal3" class="modal">
                        <div class="modal-content" id="modalcontentId3">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Last Name</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Last Name</label>
                                <input type="text1" id="lname" name="b" placeholder="Enter Your Last name..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserbirthdate_1">
                    <div id="myModal4" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Birth Date</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Birth date</label>
                                <input type="date" id="lname" name="c" placeholder="Enter your birth date..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuseremail_1">
                    <div id="myModal5" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Email</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Email</label>
                                <input type="email" id="lname" name="d" placeholder="Enter your email..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateusermobailno_1">
                    <div id="myModal6" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Phone Number</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Phone Number</label>
                                <input type="text1" id="lname" name="e" placeholder="Enter your contact number..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuseraddress_1">
                    <div id="myModal7" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Address</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Adress</label>
                                <input type="text1" id="lname" name="f" placeholder="Enter Your address..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserpincode_1">
                    <div id="myModal8" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Pincode</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Pincode</label>
                                <input type="text1" id="lname" name="g" placeholder="Enter your pincode..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserage_1">
                    <div id="myModal9" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Age</h2><h4>in years</h4>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Age</label>
                                <input type="text1" id="lname" name="h" placeholder="Enter new age..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserheight_1">
                    <div id="myModal10" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Height</h2><h4>in cm</h4>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Height</label>
                                <input type="text1" id="lname" name="i" placeholder="Enter new height..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserweight_1">
                    <div id="myModal11" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Weight</h2><h4>in Kg</h4>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Weight</label>
                                <input type="text1" id="lname" name="j" placeholder="Enter your weight..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateuserpassword_1">
                    <div id="myModal12" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Password</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Password</label>
                                <input type="text1" id="lname" name="k" placeholder="Enter your password..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>
                <form action = "updateusermedicalhistory_1">
                    <div id="myModal13" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Medical History</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Medical Status</label>
                                <input type="text1" id="lname" name="l" placeholder="Enter your medical history..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>

                <form action = "updateuseradharnumber_1">
                    <div id="myModal14" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">&times;</span>
                                <h2>Adhar Number</h2>
                            </div>
                            <div class="modal-body">
                                <label for="lname">New Adhar Number</label>
                                <input type="text1" id="lname" name="m" placeholder="Enter your Adhar number..">
                                <a href = "home"><input type="submit" value="Submit"></a>

                            </div>
                            <div class="modal-footer">
                                <h3>User Details</h3>
                            </div>
                        </div>
                    </div>
                </form>

                <script>
                    // Get the modal
                    var modal2 = document.getElementById("myModal2");
                    var modal3 = document.getElementById("myModal3");
                    var modal4 = document.getElementById("myModal4");
                    var modal5 = document.getElementById("myModal5");
                    var modal6 = document.getElementById("myModal6");
                    var modal7 = document.getElementById("myModal7");
                    var modal8 = document.getElementById("myModal8");
                    var modal9 = document.getElementById("myModal9");
                    var modal10 = document.getElementById("myModal10");
                    var modal11 = document.getElementById("myModal11");
                    var modal12 = document.getElementById("myModal12");
                    var modal13 = document.getElementById("myModal13");
                    var modal14 = document.getElementById("myModal14");
                    // Get the button that opens the modal
                    var btn2 = document.getElementById("myBtn2");
                    var btn3 = document.getElementById("myBtn3");
                    var btn4 = document.getElementById("myBtn4");
                    var btn5 = document.getElementById("myBtn5");
                    var btn6 = document.getElementById("myBtn6");
                    var btn7 = document.getElementById("myBtn7");
                    var btn8 = document.getElementById("myBtn8");
                    var btn9 = document.getElementById("myBtn9");
                    var btn10 = document.getElementById("myBtn10");
                    var btn11 = document.getElementById("myBtn11");
                    var btn12 = document.getElementById("myBtn12");
                    var btn13 = document.getElementById("myBtn13");
                    var btn14 = document.getElementById("myBtn14");
                    // Get the <span> element that closes the modal
                    var span2 = document.getElementsByClassName("close")[0];
                    var span3 = document.getElementsByClassName("close")[1];
                    var span4 = document.getElementsByClassName("close")[2];
                    var span5 = document.getElementsByClassName("close")[3];
                    var span6 = document.getElementsByClassName("close")[4];
                    var span7 = document.getElementsByClassName("close")[5];
                    var span8 = document.getElementsByClassName("close")[6];
                    var span9 = document.getElementsByClassName("close")[7];
                    var span10 = document.getElementsByClassName("close")[8];
                    var span11 = document.getElementsByClassName("close")[9];
                    var span12 = document.getElementsByClassName("close")[10];
                    var span13 = document.getElementsByClassName("close")[11];
                    var span14 = document.getElementsByClassName("close")[12];
                    // When the user clicks the button, open the modal 
                    btn2.onclick = function () {
                        modal2.style.display = "block";
                    }

                    // When the user clicks the button, open the modal 
                    btn3.onclick = function () {
                        modal3.style.display = "block";
                    }

                    btn4.onclick = function () {
                        modal4.style.display = "block";
                    }
                    btn5.onclick = function () {
                        modal5.style.display = "block";
                    }
                    btn6.onclick = function () {
                        modal6.style.display = "block";
                    }
                    btn7.onclick = function () {
                        modal7.style.display = "block";
                    }
                    btn8.onclick = function () {
                        modal8.style.display = "block";
                    }
                    btn9.onclick = function () {
                        modal9.style.display = "block";
                    }
                    btn10.onclick = function () {
                        modal10.style.display = "block";
                    }
                    btn11.onclick = function () {
                        modal11.style.display = "block";
                    }
                    btn12.onclick = function () {
                        modal12.style.display = "block";
                    }
                    btn13.onclick = function () {
                        modal13.style.display = "block";
                    }
                    btn14.onclick = function () {
                        modal14.style.display = "block";
                    }


                    //        // When the user clicks on <span> (x), close the modal
                    span2.onclick = function () {
                        modal2.style.display = "none";
                    }
                    //
                    //        // When the user clicks on <span> (x), close the modal
                    span3.onclick = function () {
                        modal3.style.display = "none";
                    }

                    span4.onclick = function () {
                        modal4.style.display = "none";
                    }
                    span5.onclick = function () {
                        modal5.style.display = "none";
                    }
                    span6.onclick = function () {
                        modal6.style.display = "none";
                    }
                    span7.onclick = function () {
                        modal7.style.display = "none";
                    }
                    span8.onclick = function () {
                        modal8.style.display = "none";
                    }
                    span9.onclick = function () {
                        modal9.style.display = "none";
                    }
                    span10.onclick = function () {
                        modal10.style.display = "none";
                    }
                    span11.onclick = function () {
                        modal11.style.display = "none";
                    }
                    span12.onclick = function () {
                        modal12.style.display = "none";
                    }
                    span13.onclick = function () {
                        modal13.style.display = "none";
                    }
                    span14.onclick = function () {
                        modal14.style.display = "none";
                    }



                    //         When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target === modal2) {
                            modal2.style.display = "none";
                        }
                    }
                    //
                    //        // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target === modal3) {
                            modal3.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal4) {
                            modal4.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal5) {
                            modal5.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal6) {
                            modal6.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal7) {
                            modal7.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal8) {
                            modal8.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal9) {
                            modal9.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal10) {
                            modal10.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal11) {
                            modal11.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal12) {
                            modal12.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal13) {
                            modal13.style.display = "none";
                        }
                    }
                    window.onclick = function (event) {
                        if (event.target === modal14) {
                            modal14.style.display = "none";
                        }
                    }

                </script>
                <script>

                    let drop12 = document.getElementById("submenuId");
                    function dropmenu() {
                        drop12.classList.toggle("open-sub-menu");
                    }

                    let sha = document.getElementById("sidebar_shrink1"); //sidebar
                    let shz = document.getElementById("sampleId"); //li
                    let shc = document.getElementById("sidebar_shrink3"); //header
                    let shd = document.getElementById("sidebar_shrink4"); //main-content
                    let she = document.getElementById("sidebar_shrink5"); //main

                    let xy0 = document.getElementById("logo_hide");
                    let xy1 = document.getElementById("sidebar_shrink21"); //main
                    let xy2 = document.getElementById("sidebar_shrink22"); //main
                    let xy3 = document.getElementById("sidebar_shrink23"); //main
                    let xy4 = document.getElementById("sidebar_shrink24"); //main
                    let xy5 = document.getElementById("sidebar_shrink25"); //main
                    let xy6 = document.getElementById("sidebar_shrink26"); //main
                    let xy7 = document.getElementById("sidebar_shrink27"); //main
                    let xy8 = document.getElementById("sidebar_shrink28"); //main
                    let xy9 = document.getElementById("sidebar_shrink29"); //main


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
                    let modalcontentId10 = document.getElementById("modalcontentId10");
                    let myModal1Shift10 = document.getElementById("myModal10");
                    let modalcontentId11 = document.getElementById("modalcontentId11");
                    let myModal1Shift11 = document.getElementById("myModal11");
                    let modalcontentId12 = document.getElementById("modalcontentId12");
                    let myModal1Shift12 = document.getElementById("myModal12");
                    let modalcontentId13 = document.getElementById("modalcontentId13");
                    let myModal1Shift13 = document.getElementById("myModal13");
                    let modalcontentId14 = document.getElementById("modalcontentId14");
                    let myModal1Shift14 = document.getElementById("myModal14");
                    function shrink_fun()
                    {
                        // changes
                        myModal2.classList.toggle("moadalContentShift"); //content
                        myModal1Shift2.classList.toggle("myModalShift"); //modal
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
                        myModal10.classList.toggle("moadalContentShift");
                        myModal1Shift10.classList.toggle("myModalShift");
                        myModal11.classList.toggle("moadalContentShift");
                        myModal1Shift11.classList.toggle("myModalShift");
                        myModal12.classList.toggle("moadalContentShift");
                        myModal1Shift12.classList.toggle("myModalShift");
                        myModal13.classList.toggle("moadalContentShift");
                        myModal1Shift13.classList.toggle("myModalShift");
                        myModal14.classList.toggle("moadalContentShift");
                        myModal1Shift14.classList.toggle("myModalShift");
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
        </div>
    </body>
</html>


