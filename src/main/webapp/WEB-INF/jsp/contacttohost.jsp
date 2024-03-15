<%-- 
    Document   : contactus
    Created on : 16-Feb-2023, 10:23:07 pm
    Author     : HP
--%>

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
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="amey2.css">
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
                border-radius: 30px;
                height: auto;
                display: flex;
                align-items: center;
                overflow-x: hidden;
                transition: 0.3s;

            }
            .search-wrapper:hover{
                box-shadow: 4px 3px 3px 0 rgba(109, 106, 106, 0.3);
            }
            .search-wrapper span{
                display: inline;
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
                /* margin-top: 85px; */
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
                margin-left: 30px;
            }
            /* poi */
            main.sideShrink5{
                display: block;
                background-color: #f1f5f9;
                min-height: calc(100vh -90px);
                /* margin-left: 100px; */
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
            /* Google Font CDN Link */
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins" , sans-serif;
            }

            body{
                /* min-height: 100vh; */
                /* background: #fff; */
                min-width: 100vw;
                overflow: hidden;
                /* display: flex;
                align-items: center;
                justify-content: center; */
            }
            .container{
                /* display: flex; */
                /* width: 90%; */
                background: #fff;
                border-radius: 6px;
                padding: 120px 50px 100px 100px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
                /* margin-top: -1rem; */
                margin-left: 350px;
            }
            .container.shrinkContact{
                /* float: left; */
                width: 80vw;
                margin-left: 150px;
            }

            .content{
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .container .content .left-side{
                width: 25%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                margin-top: 15px;
                position: relative;
            }

            .content .left-side::before{
                content: '';
                position: absolute;
                height: 70%;
                width: 2px;
                right: -15px;
                top: 50%;
                transform: translateY(-50%);
                background: #afafb6;
            }
            .content .left-side .details{
                margin: 14px;
                text-align: center;
            }
            .content .left-side .details i{
                font-size: 30px;
                color: #ff9100;
                margin-bottom: 10px;
            }
            .content .left-side .details .topic{
                font-size: 18px;
                font-weight: 500;
            }
            .content .left-side .details .text-one,
            .content .left-side .details .text-two{
                font-size: 14px;
                color: #afafb6;
            }
            .container .content .right-side{
                width: 75%;
                margin-left: 75px;
            }
            .content .right-side .topic-text{
                font-size: 23px;
                font-weight: 600;
                color: #3e2093;
            }




            @media (max-width: 950px) {
                .container{
                    width: 90%;
                    padding: 30px 40px 40px 35px ;
                }
                .container .content .right-side{
                    width: 75%;
                    margin-left: 55px;
                }
            }
            @media (max-width: 820px) {
                .container{
                    margin: 40px 0;
                    height: 100%;
                }
                .container .content{
                    flex-direction: column-reverse;
                }
                .container .content .left-side{
                    width: 100%;
                    flex-direction: row;
                    margin-top: 40px;
                    justify-content: center;
                    flex-wrap: wrap;
                }
                .container .content .left-side::before{
                    display: none;
                }
                .container .content .right-side{
                    width: 100%;
                    margin-left: 0;
                }
            }
            div.relative2 h1 span {
                color: #ff9100;
                margin: auto;
                /* text-align: center; */
            }
            .relative2 h1, .relative2 p{
                width: 75%;
                text-align: center;
            }
            .relative2 h1.relativeShrink{
                width: 50%;
                text-align: center;
            }
            .relative2 p.relativeShrink{
                width: 50%;
                text-align: center;
            }

            div.relative2 {
                display: list-item;
                position: relative;
                left: 400px;
                top:80px;
                z-index: 1;
                margin: auto;
            }

            * {
                box-sizing:border-box;
            }


            .footer 	{
                text-align:center;
            }
            .footer a  {
                color:#53B2C8;
            }

            /* form starting stylings ------------------------------- */
            .group 			  {
                margin-top: 2%;
                position:relative;
                margin-bottom:45px;
            }
            input 				{
                font-size:18px;
                padding:10px 10px 10px 5px;
                display:block;
                width:300px;
                border:none;
                border-bottom:1px solid #757575;
            }
            input:focus 		{
                outline:none;
            }

            /* LABEL ======================================= */
            label 				 {
                color:#999;
                font-size:18px;
                font-weight:normal;
                position:absolute;
                /*/pointer-events:none;/*/

                left:5px;
                top:10px;
                transition:0.2s ease all;
                -moz-transition:0.2s ease all;
                -webkit-transition:0.2s ease all;
            }

            /* active state */
            input:focus ~ label, input:valid ~ label 		{
                top:-20px;
                font-size:14px;
                color:#5264AE;
            }

            /* BOTTOM BARS ================================= */
            .bar 	{
                position:relative;
                display:block;
                width:300px;
            }
            .bar:before, .bar:after 	{
                content:'';
                height:2px;
                width:0;
                bottom:1px;
                position:absolute;
                background:#5264AE;
                transition:0.2s ease all;
                -moz-transition:0.2s ease all;
                -webkit-transition:0.2s ease all;
            }
            .bar:before {
                left:50%;
            }
            .bar:after {
                right:50%;
            }

            /* active state */
            input:focus ~ .bar:before, input:focus ~ .bar:after {
                width:50%;
            }

            /* HIGHLIGHTER ================================== */
            .highlight {
                position:absolute;
                height:60%;
                width:100px;
                top:25%;
                left:0;
                pointer-events:none;
                opacity:0.5;
            }

            /* active state */
            input:focus ~ .highlight {
                -webkit-animation:inputHighlighter 0.3s ease;
                -moz-animation:inputHighlighter 0.3s ease;
                animation:inputHighlighter 0.3s ease;
            }

            /* ANIMATIONS ================ */
            @-webkit-keyframes inputHighlighter {
                from {
                    background:#5264AE;
                }
                to 	{
                    width:0;
                    background:transparent;
                }
            }
            @-moz-keyframes inputHighlighter {
                from {
                    background:#5264AE;
                }
                to 	{
                    width:0;
                    background:transparent;
                }
            }
            @keyframes inputHighlighter {
                from {
                    background:#5264AE;
                }
                to 	{
                    width:0;
                    background:transparent;
                }
            }
            #Dash-logo{
                display:inline;
                font-size: 1.5rem;
                position:relative;
                top:-1px;
                left:-14px;
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
                    </span>
                    <input type="search" placeholder="Search here" />
                </div>

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
                        <a href="signout" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-sign-out-alt"></i></span>
                            <span class="icon-name">Sign out</span>
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                            <!-- <p>></p> -->
                        </a>
                    </div>
                </div>

            </header></div>


        <main id="sidebar_shrink5">
            <div class="relative-content">
                <div class="relative2" id="relativeId">
                    <h1 id="relativeIdH">Contact<span> Us </span></h1>
                    <p id="relativeIdP">Need Assistance? Contact Medic Today.</p>
                </div></div>

            <div class="container" id="contactId" style="overflow-y: auto;">
                <div class="content">

                    <!-- <div class="heading text-center"> -->

                    <!-- </div> -->

                    <div class="left-side">
                        <div class="address details">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="topic">Address</div>
                            <div class="text-one">dehu, phata</div>
                            <div class="text-two">Alandi 411207</div>
                        </div>
                        <div class="phone details">
                            <i class="fas fa-phone-alt"></i>
                            <div class="topic">Phone</div>
                            <div class="text-one">+91 9893 5647</div>
                            <div class="text-two">+91 3434 5678</div>
                        </div>
                        <div class="email details">
                            <i class="fas fa-envelope"></i>
                            <div class="topic">Email</div>
                            <div class="text-one">backend@gmail.com</div>
                            <div class="text-two">example@gmail.com</div>
                        </div>
                    </div>
                    <div class="right-side">
                        <div class="topic-text">Send us a message</div>
                        <p>If you have any problem or any types of quries related to my hospital, you can<br> send message from here. It's our pleasure to help you.</p>

                        <br>
                        <form action="task_1">

                            <div class="group">      
                                <input type="text" name="a" required>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Name</label>
                            </div>

                            <div class="group">      
                                <input type="email" name="b" required>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>

                            <div class="group">      
                                <input type="text" name="c" required>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Subject</label>
                            </div>

                            <div class="group">  
                                <label for="address">Message:</label>
                                <br><!-- comment -->
                                <br>
                                <textarea class="form-control" id="address" name="d" required></textarea>
                            </div>
                            <div align="center">
                                <input  type="submit" class="submit-field" onclick="send()" value="Register">
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </main>

        <!-- </div> -->


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
        let mainId = document.getElementById("sidebar_shrink5");//main

        let xy0 = document.getElementById("logo_hide");
        let xy1 = document.getElementById("sidebar_shrink21");//li
        let xy2 = document.getElementById("sidebar_shrink22");//li
        let xy3 = document.getElementById("sidebar_shrink23");//li
        let xy4 = document.getElementById("sidebar_shrink24");//li
        let xy5 = document.getElementById("sidebar_shrink25");//li
        let xy6 = document.getElementById("sidebar_shrink26");//li
        let xy7 = document.getElementById("sidebar_shrink27");//li
        let xy8 = document.getElementById("sidebar_shrink28");//li
        let xy9 = document.getElementById("sidebar_shrink29");//li
        let contactId = document.getElementById("contactId");
        let relativeIdH = document.getElementById("relativeIdH");
        let relativeIdP = document.getElementById("relativeIdP");

        function shrink_fun()
        {
            sha.classList.toggle("shrink1");
            shc.classList.toggle("shrink3-side");
            shd.classList.toggle("shrink4");
            mainId.classList.toggle("sideShrink5");
            contactId.classList.toggle("shrinkContact");
            relativeIdH.classList.toggle("relativeShrink")
            relativeIdP.classList.toggle("relativeShrink")

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

        function send()
        {
            alert("Your Problem is Registered Successful");
            console.log(res);
            alert("Your Problem is Registered Successful");
        }

    </script>
</html>