<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Medic</title>
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">


        <!-- Bootstrap links: -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <!-- <link rel="stylesheet" href="admin.css"> -->

        <!-- <link rel="stylesheet" href="appoinment.css"> -->
        <!-- <link rel="stylesheet" href="admin.css"> -->
        <script src="https://kit.fontawesome.com/768ea81349.js"></script>	
        <script type="text/javascript"
                src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
        </script>
        <script>
            function sendMail()
            {
                var params = {
                    firstname: "${firstname}",
                    lastname: "${lastname}",
                    contact: "${contact}",
                    email: "${email}",
                    branch: "${branch}",
                    lab: "${lab}",
                    datetime: "${datetime}",
                };
                const serviceID = "service_sxhd96r";
                const templateID = "template_uuik6ts";
                emailjs.send(serviceID, templateID, params)
                        .then(
                                (res) => {
                            alert("your Email is sent Successfully");
                            document.getElementById("name").value = "";
                            document.getElementById("email").value = "";
                            console.log(res);
                            alert("your Email is sent Successfully");
                        }
                        )
                        .catch((err) => console.log(err));
            }

        </script>
        <script type="text/javascript">
            (function () {
                emailjs.init("wQdAogLsQvvuVKZbS");
            })();
        </script>
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
            .sidebar-brand h4{
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
            .user-wrapper h4{
                font-size: 1.2rem;
                margin: 0;
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

            .form-container
            {
                display: block;
                width: 75vw;
                height: 50vh;
                background-color: green;

            }
            .main-form{
                display: flex;
                flex-direction: column;
            }
            .main-form input {
                height: 4vh;
                border-radius: 10px;
                background-color: rgba(245, 242, 242, 0.626);
                border: 0;
                border-bottom: 2px solid rgba(238, 130, 238, 0.893);
                font-size: 1rem;

            }

            .main-form input:hover{
                border: 2.1px solid rgba(127, 255, 212, 0.695)
            }


            .main-cards{
                display: flex;
                flex-direction: column;
                column-gap: 13rem;
                height:100%;
                background-color: rgb(214, 226, 231);

            }


            .content
            {
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-gap: 1rem;
                margin: 1em;
                margin-top: 0;
                padding: 2em 0 3em;
                height: 80vh;
                width: 35vw;
                transition: all 0.4s ease-in-out;
            }
            .content.shiftMainCard{
                margin-left:  15%;
                grid-gap:8vw;
            }

            .card1{
                display: flex;
                flex-direction: column;
                width: 35vw;
                height:55vh;
                background-color: rgba(249, 246, 239, 0.695);
            }
            .card1 span{
                display: list-item;
                width: 70vw;
                /* background-color: rgba(245, 222, 179, 0); */
                font-size: 3.3rem;
            }
            #head1{
                font-size: 2.5rem;
                color: #42474e;
                margin: .5em 0 0 1em;
            }
            #head2{
                margin: 0 0 0 .5em;

            }
            .card1 p{
                margin: 2em 10em 3em 2em;
            }
            .app-btn{
                display: inline-flex;
                column-gap: 2.5vw;
                float: left;
                margin-left: 20px;
            }
            .card1 button{
                height: 45px;
                font-size: 1.2rem;
                width: 8rem;
                transition: .3s ease-out;
                background-image: linear-gradient(to right,  #feb47b  1%, #ff7e5f  100%);
                transition: all 0.3s ease-out;

                border: 0;
            }
            .card1 button:hover{
                transform: translate(3px,2px);
                background-image: linear-gradient(to right,  #a2fe7b  1%, #5ff7ff  100%);

            }


            .card2{
                display: block;
                max-height: 55vh;
                width: 35vw;
                padding-right: 10px;
                background-image: linear-gradient(to left bottom, #f8f5f4 0%,rgb(252, 254, 246)51%);
                visibility: hidden;
                transition:  .1s ease;
                /* animation: name duration timing-function delay iteration-count direction fill-; */
            }
            .card2.ShowForm{
                visibility:visible;
            }

            ::placeholder{
                color: #8390A2;
                font-size: 1rem;
                font-style: bold;
                font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            }

            #label-form{
                display: block;
                font-size: 2.5rem;
                color: rgb(47, 4, 103);
                font-style: bold;
                font-family:Georgia, 'Times New Roman', Times, serif;
                padding:0 0 10px 0;
                margin-left: 3rem;
            }

            .card2 input{
                /* width: 100%; */
                height:35px;
                font-size: 1rem ;
                border-radius: 10px;
                text-indent: 1rem;
                border: 0;
                border-bottom:2px solid rgb(216, 66, 254) ;
                background-color:rgba(255, 255, 255, 0.618) ;
            }
            .card2 input:hover{
                border-bottom: 2px solid rgb(26, 250, 82);
            }

            .card2 select{
                width: 80%;
                height: 35px;
                border-radius: 30px;
                text-indent: 1rem;
                font-size: 1rem;
                background-color: #f1f5f98d;
            }
            .name-field{

                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-template-rows: 1fr 1fr 1fr;
                margin-left: 15px;
                grid-gap:15px;
                /* margin: auto; */
                /* grid-column-end: 20rem; */
            }
            .name-field input{
                width: 90%;
                margin-bottom: .5rem;
                height: 3rem;

            }
            .card2 ul{
                margin-top: 10px;
            }
            .card2{
                align-items: center;
                justify-content: center;
                /* background-image:linear-gradient(to right bottom, rgb(219, 80, 189) 0% , rgb(218, 249, 247) 50%) ; */
            }

            .card2 ul li{
                margin-bottom: 2vh;
            }
            .input[type=email],.input[type=tel]
            {
                width: 70%;
            }

            .card2 ul li span{
                display: block;
                font-size: 1rem;
            }
            .rem-fld{
                display: grid;
                grid-template-columns:2fr 2fr ;
                margin: auto;
                /* background-color: red; */
            }
            .rem-fld span{
                width: 80%;
                margin-left: 3rem;
            }
            .rem-fld  input{
                width: 100%;
                margin-top: -.7rem;
                margin-left: -1.3rem;
                /* float: left; */
            }
            .submit-btn{
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-gap    :2rem;
                width: 70%;
                margin: auto;
                margin-top: 7vh;
                text-align: center;
                text-indent: 0;
                /* background-color:blue ; */
            }
            .submit-btn input{
                background-image: linear-gradient(to right,  #feb47b  1%, #ff7e5f  100%);

                transition: 0.4s ease;
                width: 10rem;
                text-align: center;
                transition: all 0.3s ease-out;
            }
            .submit-btn input:hover{
                background-image: linear-gradient(to right,  #a2fe7b  1%, #5ff7ff  100%);

                transform: translate(5px,-2px);

            }

            .sample-img{
                background-image: url("https://images.pexels.com/photos/5417678/pexels-photo-5417678.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
                background-size: cover;
                background-repeat: no-repeat;
                height: 80vh;
                max-height: 80vh;
                max-width: 40vw;
                overflow:hidden;
                /* position: absolute; */
                margin-top: 30vh;

            }

            .app-btn button {
                animation: wiggle1 3s linear infinite;
            }

            /* Keyframes */
            @keyframes wiggle1 {
                0%, 7% {
                    transform: rotateZ(0);
                }
                15% {
                    transform: rotateZ(-16deg);
                }
                20% {
                    transform: rotateZ(10deg);
                }
                25% {
                    transform: rotateZ(-10deg);
                }
                30% {
                    transform: rotateZ(6deg);
                }
                35% {
                    transform: rotateZ(-5deg);
                }
                40%, 100% {
                    transform: rotateZ(0);
                }
            }

            .moving-block{
                margin: 1rem;
                position: absolute;
                height: 70px;
                width: 70px;
                background-color: #DD2F6E ;
                border: 0;
                box-shadow: 1px 3px 13px 3px rgba(70, 235, 244, 0.844);
                animation: rotation 4s infinite linear ;
                visibility: visible;
            }

            .moving-block:hover{
                background-color: rgb(52, 255, 106);
            }
            .moving-block.stopmoving{
                visibility: hidden;
            }
            @keyframes rotation{

                0%{
                    transform: rotate(0deg);
                    top:20vh;
                    left:60vw;
                    height: 70px;
                    width: 70px;
                }
                25%{
                    transform: rotate(90deg);
                    top:20vh;
                    left:90vw;
                    height: 50px;
                    width: 50px;
                    /* border-radius: 35%; */
                }
                50%{
                    transform: rotate(180deg);
                    top:70vh;
                    left:90vw;
                    height: 75px;
                    width: 75px;
                }
                75%{
                    transform: rotate(270deg);
                    top:70vh;
                    left:60vw;
                    width: 50px;
                    height: 50px;

                }
                100%{
                    transform: rotate(360deg);
                    top:20vh;
                    left: 60vw;
                    height: 70px;
                    width: 70px;
                    ;
                }
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



        <div class="sidebar" id="sidebar_shrink1" >
            <div class="sidebar-brand">
                <h4><span class="lab la-studiovinari" id="web-logo"></span><p id="logo_hide">Medic</p></h4>
            </div>

            <div class="sidebar-menu">
                <ul class="list-unstyled">

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
                        <span id="Dash-logo">
                            <a href="registeruser"class="text-decoration-none"> Dashboard </a></span>

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

            <main id="sidebar_shrink5"><div class="auth-wrapper">

            </main>
            <div class="main-cards" >

                <div class="content" id="maincardId">
                    <div class="card1">
                        <span id="head1">MAKE AN</span><span id="head2"> APPOINMENT</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione perferendis
                            fugit animi, illo temporibus dignissimos iure aspernatur voluptas .</p>
                        <div class="app-btn">
                            <button id="myBtn1">Appoinments</button> <button onclick="s17()">Book</button> <button onclick="sendMail()">Email</button>
                        </div>
                    </div>

                    <!-- <div class="card-content"> -->
                    <!-- <div class="sample-img"></div> -->
                    <div class="card2" id="D1">
                        <div>
                            <span id="label-form">
                                It's Quick & Easy
                            </span>
                        </div>
                        <form action="appoinmentregisteration">
                            <div>
                                <ul>
                                    <li> 
                                        <div class="name-field">

                                            <input type="text" placeholder="Krishna" name="a" required>
                                            <input type="text" placeholder="Ronaldo" name="b" required>
                                            <input type="tel" placeholder="Enter phone number" required name="c" >
                                            <input type="email" placeholder="krishna.ronaldo@hardward.in (optional)" name="d" id="">
                                            <select required name="e">
                                                <option value="Nigdi">Branch</option>
                                                <option value="Nigdi">Nigdi</option>
                                                <option value="Hadapsar">Hadapsar</option>
                                                <option value="Pimpri-chinchavad">Pimpri-chinchavad</option>
                                                <option value="Amravati">Amravati</option>
                                                <option value="Borivali">Borivali</option>
                                                <option value="Nashik">Nashik</option>
                                            </select>

                                            <select required name="f" >
                                                <option value="Nigdi">Laboratory</option>
                                                <option value="X-ray">X-ray</option>
                                                <option value="MICU">MICU</option>
                                                <option value="OPD">OPD</option>
                                                <option value="IPD">IPD</option>
                                                <option value="NICU">NICU</option>
                                                <option value="Blood Bank">Blood Bank</option>
                                            </select>


                                            <li> 
                                                <div class="rem-fld">
                                                    <span>Prefferred date time:</span>
                                                    <input type="datetime-local" required name="g">
                                                    <li>
                                                        <div class="submit-btn">
                                                            <a href="appoinmentregisteration" onclick="send()"> <input type="submit" value="Book Appoinment"></a>
                                                            
                                                            <input type="reset" id="rzp-button1" value="Pay">

                                                        </div>
                                                    </li>
                                                </div>
                                            </li>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </form>
                        <div class="moving-block" id="mblock">
                        </div>
                        </ul>
                    </div>
                </div>
                <!-- </div> -->
            </div>
        </div>


        <!-- modal -->
        <div id="myModal1" class="modal">
            <div class="modal-content" id="modalcontentId">
                <div class="modal-header">
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
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
                                var options = {
                                    "key": "rzp_test_1cBdWQGRzHOV38", // Enter the Key ID generated from the Dashboard
                                    "amount": "${amount}00", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                                    "currency": "INR",
                                    "name": "${firstname} ${lastname}", //your business name
                                    "description": "Test Transaction",
                                    "image": "https://example.com/your_logo",
//                "order_id": "order_9A33XWu170gUtm", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                                    "callback_url": "https://eneqd3r9zrjok.x.pipedream.net/",
                                    "prefill": {
                                        "name": "${firstname} ${lastname}", //your customer's name
                                        "email": "${email}",
                                        "contact": "${contact}"
                                    },
                                    "notes": {
                                        "address": "Razorpay Corporate Office"
                                    },
                                    "theme": {
                                        "color": "#3399cc"
                                    }
                                };
                                var rzp1 = new Razorpay(options);
                                document.getElementById('rzp-button1').onclick = function (e) {
                                    rzp1.open();
                                    e.preventDefault();
                                }
        </script>
    </body>
    <script>
        let subform = document.getElementById("D1");
        let mblock = document.getElementById("mblock");
        function s17()
        {
            subform.classList.toggle("ShowForm");
            mblock.classList.toggle("stopmoving");
        }
    </script>
    <script>

        let drop12 = document.getElementById("submenuId");
        function dropmenu() {
            drop12.classList.toggle("open-sub-menu");
        }
        let modalcontentId = document.getElementById("modalcontentId");
        let myModal1Shift = document.getElementById("myModal1");
        let sha = document.getElementById("sidebar_shrink1"); //sidebar
        let maincardId = document.getElementById("maincardId"); //li
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
            sha.classList.toggle("shrink1");
            shc.classList.toggle("shrink3-side");
            shd.classList.toggle("shrink4");
            she.classList.toggle("shrink5");
            maincardId.classList.toggle("shiftMainCard");
            myModal1.classList.toggle("moadalContentShift");
            myModal1Shift.classList.toggle("myModalShift");
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
        function showApn() {

        }
        function send() {
            alert("your Booking Is Successful");
            console.log(res);
            alert("your Booking Is Successful");
        }
    </script>
</html>

