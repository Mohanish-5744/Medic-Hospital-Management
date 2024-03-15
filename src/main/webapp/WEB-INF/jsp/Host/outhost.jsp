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

        <!-- <link rel="stylesheet" href="admin.css"> -->

        <style>
            main{
                width: calc(100%-345px);
                margin-top: 85px;
                padding: 2rem 1.5rem;
                /* background: #f1f5f9; */
                height: 100vh;
                min-height: calc(100vh -90px);
                transition: all 0.7s ease;
            }


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
                /*/background-color: #F273E6;*/
                
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
                /*background-color: #fff;*/
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

            header.shrink3{
                width:calc(100% - 74px);
                left: 75px;
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

            /* Side bar code for hidding labels */
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


            /* Profile page code */

            .sub-menu-wrap{
                position: absolute;
                top: 100%;
                right: 5%;
                width:250px;
                max-height: 0;
                overflow: hidden;
                background-color: #fff;
                border-radius: 10px;
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
            }
            .user-info img{
                width: 60px;
                border-radius: 50%;
                margin-right: 15px;
            }
            .sub-menu-link{
                display: block;
                font-size: 1.2rem;
                text-decoration: none;
                margin: 12px;
                transition: transform 0.4s ease;
            }
            .sub-menu-link:hover{

                transform: translate(5px);
                color: #000000;
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

            .body-container.bodyBlurr{
                background-color: rgb(27, 0, 36);
                opacity: .6;

            }

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


            /* creating geraphs */
            .graphBox.shrink-sidebar{
                position:absolute;
                background: transparent;
                top:90px;
                width: 90vw;
                margin-left: 80px;
            }


            @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap");

            * {
                box-sizing: border-box;
                padding: 0;
                margin: 0;
            }

            body {
                font-family: "Roboto", sans-serif;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .main-container {
                width: 440px;
                height: 350px;
                /* background-color: #f4f4f877; */
                background: #e2fbf994;
                color: #87888f;
                position: relative;
                top:10vh;
                left: 25vw;
                box-shadow: 0 5px 20px hsla(0, 1%, 26%, 0.436);
                border-radius: 5px;
            }
            .main-container.graphPieClass{
                position: absolute;
                top: 22vh;
                left: 10vw;
            }
            /* CONTENT */
            #content {
                margin-top: -810px;
                margin-left: 450px;
            }

            .main-container1 {
                position:relative;
                top: -8vh;
                left: 25vw;
                color: #8617e0;
                border-radius: 5px;
                margin-top: 20px;
                padding: 20px;
                width: 560px;
                height: 350px;
                border-radius: 5px;
            }

            .year-stats {
                /*/white-space: nowrap;*/
                
                max-height: 170px;
                background: -webkit-gradient(radial, center center,10,center center,1000, from(#364D58), to(#000));
                overflow: hidden;
            }

            .year-stats:hover {
                overflow-x: auto;
            }

            ::-webkit-scrollbar {
                height: 5px;
                width: 100%;
            }

            ::-webkit-scrollbar-track {
                background: #444e80;
            }
            ::-webkit-scrollbar-thumb {
                background: #abafc6;
                border-radius: 10px;
            }

            ::-webkit-scrollbar-thumb {
                background: #5397d6;
            }

            .month-group {
                cursor: pointer;
                max-width: 400px;
                height: 110px;
                margin: 10px;
                display: inline-block;
            }

            .bar {
                background-color: #abafc6;
                width: 20px;
                border-radius: 5px;
                margin-bottom: 10px;
            }

            .month-group:hover .bar,
            .selected .bar {
                background: #5397d6;
            }

            .month-group:hover p,
            .selected p {
                color: #ea2311a7;
            }

            .h-25 {
                height: 25%;
            }
            .h-50 {
                height: 50%;
            }
            .h-75 {
                height: 75%;
            }
            .h-100 {
                height: 100%;
            }

            .stats-info {
                margin-top: 15px;

                display: flex;
                align-items: center;
                justify-content: space-around;
                position: relative;
            }

            .graph-container {
                position: relative;

            }

            .percent {
                display: block;
                width: 120px;
                height: 120px;
            }

            .circle {
                stroke: #915db1;
                fill: none;
                stroke-width: 3;
            }

            .circle:nth-child(2) {
                stroke: #e59f3c;
            }

            .circle:nth-child(3) {
                stroke: #5397d6;
            }

            .circle:nth-child(4) {
                stroke: #4cc790;
            }

            .graph-container p {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                font-size: 12px;
                color: #fff;
                text-align: center;
            }

            .info p {
                margin-bottom: 10px;
            }

            .info span {
                color: #31013a;
                font-size: 1.1rem;
            }


            polyline {
                stroke-dasharray: 1000;
                stroke-dashoffset: 1000;
                animation: dash 5s ease-in forwards;
                animation-iteration-count: 10;
                animation-direction: alternate;
            }

            @keyframes dash{
                to {
                    stroke-dashoffset: 0;
                }
            }


            .name {
                font-size: .8rem;
                font-weight: light;
            }





            ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,body,macbook,p,blockquote,fieldset,input{
                margin:0;
                padding:0;
            }

            body {
                background: -webkit-gradient(radial, center center,10,center center,1000, from(#364D58), to(#000));

            }


            .break {
                clear:both;
            }

            #wrapper {
                width:800px;
            }




            #bar {
                list-style:none;
                margin:70px 0 0 200px;
                width:400px;
            }
            #bar li {
                margin-top:-40px;
            }

            #bar li:first-child div.top {
                background-color:rgba(186,211,215,0.5);
            }

            #bar li:last-child div.bottom {
                -moz-box-shadow: 0 10px 10px hsla(0,0%,0%,.2);
                -webkit-box-shadow: 0 100px 30px hsla(0,0%,0%,.2);
                box-shadow: 0 100px 30px hsla(0,0%,0%,.2);
            }

            #bar li div.top {
                background-color:rgba(140,172,176,0.5);
                position:relative;
                width:100px;
                height:40px;
                -moz-border-radius: 100px/40px;
                -webkit-border-radius: 100px 40px;
                border-radius: 100px/40px;
            }
            #bar li div.top img {
                margin-left:18px;
                margin-top:-32px;
                display:none;
            }

            #bar li div.bottom {
                background-color:rgba(184,203,205,0.5);
                margin-top:-40px;
                position:relative;
                width:100px;
                -moz-border-radius: 100px/40px;
                -webkit-border-radius: 100px 40px;
                border-radius: 100px/40px;
            }
            #bar li div.bottom div.infobox {
                padding:40px 0 0 120px;
            }
            #bar li div.bottom div.infobox h3 {
                font-family:Georgia,serif,Times;
                color: whitesmoke;
            }
            #bar li div.bottom div.infobox p {
                font-family:"Lucida Grande",Arial,Helvetica,Sans-Serif;
                color: whitesmoke;

            }

            #bar li:hover div.top img {
                display:inline;
                height: 90px;
                position: relative;
                left: -1vw;
                top:-4vh;
            }
            #bar li:hover div.bottom div.infobox {
                text-shadow: 0px 5px 5px #111;
            }

            #iphone div.top {
                z-index:99;
            }
            #iphone div.bottom {
                z-index:98;
                height:150px;
            }
            #iphone:hover div.top {
                z-index:999;
                background-color:#1f81ac;
            }
            #iphone:hover div.bottom {
                z-index:998;
                background-color:#1a6c90;
                background:-moz-linear-gradient(-90deg, #1a6c90, #14506b);
                background:-webkit-gradient(linear, 0 top, 0 bottom, from(#1a6c90), to(#14506b));
            }

            #macbook div.top {
                z-index:97;
            }
            #macbook div.bottom {
                z-index:96;
                height:200px;
            }
            #macbook:hover div.top {
                z-index:997;
                background-color:#bc003c;
            }
            #macbook:hover div.bottom {
                z-index:996;
                background-color:#9d0032;
                background:-moz-linear-gradient(-90deg, #9d0032, #7a0027);
                background:-webkit-gradient(linear, 0 top, 0 bottom, from(#9d0032), to(#7a0027));
            }
            #ipod div.top {
                z-index:95;
            }
            #ipod div.bottom {
                z-index:94;
                height:250px;
            }
            #ipod:hover div.top {
                z-index:995;
                background-color:#d98f23;
            }
            #ipod:hover div.bottom {
                z-index:994;
                background-color:#b6781e;
                background:-moz-linear-gradient(-90deg, #b6781e, #916018);
                background:-webkit-gradient(linear, 0 top, 0 bottom, from(#b6781e), to(#916018));
            }

            #cinema div.top {
                z-index:93;
            }
            #cinema div.bottom {
                z-index:92;
                height:100px;
            }
            #cinema:hover div.top {
                z-index:993;
                background-color:#7da864;
            }
            #cinema:hover div.bottom {
                z-index:992;
                background-color:#698d54;
                background:-moz-linear-gradient(-90deg, #698d54, #506b40);
                background:-webkit-gradient(linear, 0 top, 0 bottom, from(#698d54), to(#506b40));
            }

            #macmini div.top {
                z-index:91;
            }
            #macmini div.bottom {
                z-index:90;
                height:120px;
            }
            #macmini:hover div.top {
                z-index:991;
                background-color:#3f1150;
            }
            #macmini:hover div.bottom {
                z-index:990;
                background-color:#340e43;
                background:-moz-linear-gradient(-90deg, #340e43, #1a0721);
                background:-webkit-gradient(linear, 0 top, 0 bottom, from(#340e43), to(#1a0721));
            }

            #apple {
                margin-top:-70px;
                position:relative;
                z-index:-999;
                left:6.4vw
            }
            #apple p {
                float:right;
                padding-top:247px;
            }

            .main-container1.shrink-side99{
                position: absolute;
                top: 16vh;
                left:44vw
            }

            .graphBox.shrink-sidebar{
                width: 90vw;
                margin-left: calc(100%-75px);
                position: absolute;
                top: 72vh;
            }
            .graphBox{
                position: absolute;
                top:70vh;
                padding: 20px;
                display: grid;
                grid-gap: 7vw;
                grid-template-columns: 1fr 1.7fr;
                height: 200px;
                min-height: 200px;
                ;
                width: calc(100vw - 345px);
                margin-left: 345px;
                background-color: rgba(0,0,0,0);
                padding: 30px;
                transition: all .4s ease;

            }
            .graphBox .box{
                background: -webkit-gradient(radial, center center,10,center center,1000, from(#364D58), to(#000));
                display: flex;
                height: 220px;
                width: 60%;
                min-height: 200px;
                margin-left: 100px;
                border-radius: 4px;
                box-shadow: 0 7px 25px rgba(0, 0, 0, 0.8);
            }

            .vertical-bar{
                position: relative;
                top:65vh;
                left: -10vw;
            }
            .vertical-bar.barShift{
                left:0;
                position:absolute;
                top:120vh;
                left:50vw;

            }
            .base-img{
                position: relative;
                left: 8vw;
                top:-5vh
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
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink23"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink24"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink25"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink26"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink27"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink28"></span>
                        </a></li>
                    <li><a href="">
                            <span class=""></span>
                            <span id="sidebar_shrink29"></span>
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
                        <a href="loginformhostredirect"> Dashboard </a></span>  
                    </label>                    
                </h2>
                <!-- </div> -->

           

                <div class="user-wrapper">
                    <img src="https://ui-avatars.com/api/?background=random&name=Host" width="40px" height="40px" alt="Profilr picture" onclick="openmenu()">
                    <div>
                        <h4>Host</h4>
                        <small>Host</small>
                    </div>
                </div>

                <div class="sub-menu-wrap" id="submenuId">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img src="https://ui-avatars.com/api/?background=random&name=Host" alt="">
                            <h3>Host</h3>
                        </div>
                        <hr>

                        <a href="displayadmin" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-calendar-check"></i></span>
                            <span class="icon-name">Admin</span>
                            <!-- <p>></p> -->
                            <span class="arrow1"><span class="las la-angle-right" ></span></span><br>
                        </a>
                       
                        <a href="displaytask_1" class="sub-menu-link">
                            <span class="icon-menu-left"><i class="las la-phone-volume"></i></span>
                            <span class="icon-name">Task</span>
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


            <main>
                <div class="main-container" id="graphPieId">
                    <div class="year-stats">
                        <div class="month-group">
                            <div class="bar h-100"></div>
                            <p class="month">Jan</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-50"></div>
                            <p class="month">Feb</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-75"></div>
                            <p class="month">Mar</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-25"></div>
                            <p class="month">Apr</p>
                        </div>
                        <div class="month-group selected">
                            <div class="bar h-100"></div>
                            <p class="month">May</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-50"></div>
                            <p class="month">Jun</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-75"></div>
                            <p class="month">Jul</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-25"></div>
                            <p class="month">Aug</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-50"></div>
                            <p class="month">Sep</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-75"></div>
                            <p class="month">Oct</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-25"></div>
                            <p class="month">Nov</p>
                        </div>
                        <div class="month-group">
                            <div class="bar h-100"></div>
                            <p class="month">Dez</p>
                        </div>
                    </div>

                    <div class="stats-info">
                        <div class="graph-container">
                            <div class="percent">
                                <svg viewBox="0 0 36 36" class="circular-chart">
                                <path class="circle" stroke-dasharray="100, 100" d="M18 2.0845
                                      a 15.9155 15.9155 0 0 1 0 31.831
                                      a 15.9155 15.9155 0 0 1 0 -31.831" />
                                <path class="circle" stroke-dasharray="85, 100" d="M18 2.0845
                                      a 15.9155 15.9155 0 0 1 0 31.831
                                      a 15.9155 15.9155 0 0 1 0 -31.831" />
                                <path class="circle" stroke-dasharray="60, 100" d="M18 2.0845
                                      a 15.9155 15.9155 0 0 1 0 31.831
                                      a 15.9155 15.9155 0 0 1 0 -31.831" />
                                <path class="circle" stroke-dasharray="30, 100" d="M18 2.0845
                                      a 15.9155 15.9155 0 0 1 0 31.831 
                                      a 15.9155 15.9155 0 0 1 0 -31.831" />
                                </svg>
                            </div>
                            <p>Total: $2075</p>
                        </div>

                        <div class="info">
                            <p>Death and Birth Rate<br /><span>5.4 Deaths per 1k Birth </span></p>
                            <!--                        <p>Updated categories <span>2</span></p>
                                                    <p>Bonus payments <span>$92</span></p>-->
                        </div>
                    </div>
                </div></div>




        <div class="main-container1" id="lineGraphId">
            <svg class='container' width="529px" height="286px" viewBox="30 27 529 286" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <!-- Generator: Sketch 3.8.3 (29802) - http://www.bohemiancoding.com/sketch -->

            <defs></defs>
            <g id="graph-copy" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(30.000000, 27.000000)">
            <g id="y_axis" font-size="11.0833333" font-family=".HelveticaNeueDeskInterface-Regular, .Helvetica Neue DeskInterface" fill="#abafc6" opacity="0.4" font-weight="normal">
            <text id="0">
            <tspan x="25.3008249" y="264.333333">0</tspan>
            </text>
            <text id="200">
            <tspan x="12.7757572" y="232.666667">200</tspan>
            </text>
            <text id="400">
            <tspan x="12.7757572" y="201">400</tspan>
            </text>
            <text id="600">
            <tspan x="12.7757572" y="169.333333">600</tspan>
            </text>
            <text id="800">
            <tspan x="12.7757572" y="137.666667">800</tspan>
            </text>
            <text id="1000">
            <tspan x="6.51322328" y="106">1000</tspan>
            </text>
            <text id="1200">
            <tspan x="6.51322328" y="74.3333333">1200</tspan>
            </text>
            <text id="1400">
            <tspan x="6.51322328" y="42.6666667">1400</tspan>
            </text>
            <text id="1600">
            <tspan x="6.51322328" y="11">1600</tspan>
            </text>
            </g>
            <g id="GRAPHS" transform="translate(64.000000, 16.000000)" stroke-linecap="round" stroke-width="8" stroke-linejoin="round">
            <polyline id="Banks" stroke="#5BCAC1" points="0 1 88.0438662 1 128.985782 137 180.170616 137 224.189573 182 256.947867 91 301.990521 137 346.009479 91 392.087202 91 429.952607 179"></polyline>
            <polyline id="Bridge" stroke="#81DEFF" points="2.04739336 183 54.2559242 227 96.2274882 47 133.080569 1 302.018438 1 346.680361 44.6280822 386.957346 0 427.905213 43"></polyline>
            <polyline id="PayPal" stroke="#F6F5A6" points="2.04739336 180 53.273159 180 99.2985782 91 137.175355 47 219.077488 47 256.947867 90 301.990521 47 349.080569 137 398.228672 137 432 91"></polyline>
            </g>
            <g id="x_axis" transform="translate(71.974046, 271.541667)" font-size="11.0833333" font-family=".HelveticaNeueDeskInterface-Regular, .Helvetica Neue DeskInterface" fill="#abafc6" opacity="0.4" font-weight="normal">
            <text id="1">
            <tspan x="0.396183206" y="11">1</tspan>
            </text>
            <text id="2">
            <tspan x="39.2603361" y="11">2</tspan>
            </text>
            <text id="3">
            <tspan x="78.8786567" y="11">3</tspan>
            </text>
            <text id="4">
            <tspan x="118.496977" y="11">4</tspan>
            </text>
            <text id="5">
            <tspan x="158.115298" y="11">5</tspan>
            </text>
            <text id="6">
            <tspan x="197.733619" y="11">6</tspan>
            </text>
            <text id="7">
            <tspan x="237.351939" y="11">7</tspan>
            </text>
            <text id="8">
            <tspan x="276.97026" y="11">8</tspan>
            </text>
            <text id="9">
            <tspan x="316.58858" y="11">9</tspan>
            </text>
            <text id="10">
            <tspan x="359.229833" y="11">10</tspan>
            </text>
            <text id="11">
            <tspan x="400.036703" y="11">11</tspan>
            </text>
            <text id="12">
            <tspan x="438.466474" y="11">12</tspan>
            </text>
            </g>
            <g id="grid" transform="translate(46.618321, 4.750000)" stroke="#abafc6" stroke-linecap="square" opacity="0.0800000057">
            <path d="M0.396183206,1.1875 L478.991396,1.1875" id="Line"></path>
            <path d="M0.396183206,32.8541667 L478.991396,32.8541667" id="Line"></path>
            <path d="M0.396183206,64.5208333 L478.991396,64.5208333" id="Line"></path>
            <path d="M0.396183206,96.1875 L478.991396,96.1875" id="Line"></path>
            <path d="M0.396183206,127.854167 L478.991396,127.854167" id="Line"></path>
            <path d="M0.396183206,159.520833 L478.991396,159.520833" id="Line"></path>
            <path d="M0.396183206,191.1875 L478.991396,191.1875" id="Line"></path>
            <path d="M0.396183206,222.854167 L478.991396,222.854167" id="Line"></path>
            <path d="M0.396183206,254.520833 L478.991396,254.520833" id="Line"></path>
            </g>
            </g>
            </svg>
        </div>






        <div class="graphBox" id="graphId">
            <div class="box">
                <canvas id="myChart"></canvas>
            </div>
            <div class="box">
                <canvas id="earningsGraph"></canvas>

            </div>
        </div>

    </main>
    <div class="vertical-bar" id="barId">
        <div id="wrapper">
            <div id="content">
                <ul id="bar">
                    <li id="iphone">
                        <div class="top">
                            <img src="https://lh5.googleusercontent.com/7B65n_fcC6T5zPlUnpfwbnmWsA0wSusKkUVu0C2aoxxYLVgbS2Hz4kGwgvaWeoeTqEg=w2400" alt="iPhone" />
                        </div>
                        <div class="bottom">
                            <div class="infobox">
                                <h3>Corona Virus</h3>
                                <p>80,1</p>
                            </div>
                        </div>
                    </li>
                    <li id="macbook">
                        <div class="top" id="top-den">
                            <img src="https://lh5.googleusercontent.com/gMTuq85ClKbpUSzTzV-gm8MCRyD-O5n7nQGMQx-ZRsF7WjwpUo9aV4AhpNsCM-soJTg=w2400" alt="">
                        </div>
                        <div class="bottom">
                            <div class="infobox">
                                <h3>Dengu</h3>
                                <p>102,6</p>
                            </div>
                        </div>
                    </li>
                    <li id="ipod">
                        <div class="top">
                            <img src="https://lh3.googleusercontent.com/Ob8DV_h9ARxcrQWcVXPPZPPXabNKCnKB6GBUuWdi7MjJ1vzvD32eLebuiHjwVAVF__k=w2400" alt=""> </div>
                        <div class="bottom">
                            <div class="infobox">
                                <h3>Alzeimer's</h3>
                                <p>198,4</p>
                            </div>
                        </div>
                    </li>
                    <li id="cinema">
                        <div class="top">
                            <img src="https://lh4.googleusercontent.com/6i2U2vR_gdj7gvtgG-y3fo5ZFEdkTbSdkPNGMFdz9XoEymuBMASv0aiw_sgQdz7QYK8=w2400" alt=""></div>
                        <div class="bottom">
                            <div class="infobox">
                                <h3>Stroke</h3>
                                <p>38,2</p>
                            </div>
                        </div>
                    </li>
                    <li id="macmini">
                        <div class="top">
                            <img src="https://lh6.googleusercontent.com/Drv7abj8-SEXhuFkN8ecy1zOKCodeFV8cRbDMps0cbRC-Izk4aleJq0rhMDJ_folRJE=w2400" alt=""></div>
                        <div class="bottom">
                            <div class="infobox">
                                <h3>Diabetes Mellitus</h3>
                                <p>55,6</p>
                            </div>
                        </div>
                    </li>
                </ul>
                <div id="apple">
                    <!--<img src="https://cdn.dribbble.com/users/393931/screenshots/5535257/online_drug_store-05.png" alt="Apple Inc" height="200px" class="base-img"/>-->
                    <img src="https://i.postimg.cc/wTKk4TKR/Picture2.png">
                </div>
            </div>
        </div>



    </div>


</body>
<script>


    let sha = document.getElementById("sidebar_shrink1");//sidebar
    let shz = document.getElementById("ampleId");//li
    let shc = document.getElementById("sidebar_shrink3");//header
    let shd = document.getElementById("sidebar_shrink4");//main-content
    // let she =document.getElementById("sidebar_shrink5");//main
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

    let var2 = document.getElementById("graphId");//shrink the graph
    let var3 = document.getElementById("lineGraphId");
    let graphPieId = document.getElementById("graphPieId");
    let barId = document.getElementById("barId");


    function shrink_fun()
    {
        var3.classList.toggle("shrink-side99");
        sha.classList.toggle("shrink1");
        shc.classList.toggle("shrink3");
        shd.classList.toggle("shrink4");
        amey();
    }
    function amey()
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
        var2.classList.toggle("shrink-sidebar");
        graphPieId.classList.toggle("graphPieClass");
        barId.classList.toggle("barShift");
        var2.classList.toggle("graphbarShift")
    }

</script>
<script>
    let var1 = document.getElementById("submenuId");

    function openmenu() {
        var1.classList.toggle("open-sub-menu");
        var2.classList.toggle("shrink-sidebar");
    }
</script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.0/chart.min.js" integrity="sha512-qKyIokLnyh6oSnWsc5h21uwMAQtljqMZZT17CIMXuCQNIfFSFF4tJdMOaJHL9fQdJUANid6OB6DRR0zdHrbWAw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'polarArea',

        backgroundShadowColor: 'rgba(0,0,0,0)',
        shadowBlur: 10000,
        shadowOffsetX: 0,
        shadowOffsetY: 0,
        borderWidth: 0,
        data: {
            labels: ['Doctors', 'Staff', 'Patients', 'Labs', 'Task'],
            datasets: [{
                    label: '# Current user of portal',
                    data: [55, 20, 50, 7, 30],
                    backgroundColor: [
                        'rgba(255,99,132,0.9)',
                        'rgba(54,162,235,0.9)',
                        'rgba(255,206,86,0.9)',
                        'rgba(75,192,192,0.9)',
                        'rgba(255,159,64,0.9)',
                    ],

                }]
        },
        options: {
            responsive: true,
        }
    });


    const  earningsGraph = document.getElementById('earningsGraph');
    new Chart(earningsGraph, {
        type: 'bar',

        backgroundShadowColor: 'rgba(0,0,0,0)',
        shadowColor: 'yellow',
        data: {
            labels: ['Doctors', 'Staff', 'Patients', 'Labs', 'Task'],
            datasets: [{
                    label: '# Current user of portal',
                    data: [55, 20, 50, 7, 30],
                    backgroundColor: [
                        'rgba(255,99,132,0.9)',
                        'rgba(54,162,235,0.9)',
                        'rgba(255,206,86,0.9)',
                        'rgba(75,192,192,0.9)',
                        'rgba(255,159,64,0.9)',
                    ],
//    borderWidth: 1
                }]
        },
        options: {
            responsive: true,

        }
    });
</script>
</html>