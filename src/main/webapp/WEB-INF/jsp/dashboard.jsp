<html>
    <head>
        <title>Hospital Patient Registration</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- <link rel="stylesheet" href="registration.css"> -->
        <style>
            body{
                /* background-image: url("https://as2.ftcdn.net/v2/jpg/05/45/42/81/1000_F_545428155_TFPXNYEHcsqdWzSxNoZjLuVW74nD0szw.jpg");
                 background-repeat: no-repeat;
                background-size: cover;
                height: 100%;
                height: 90%;
                display: flex;
                align-items: center;
                justify-content: center; */
            }

            .title-text{
                position: absolute;
                top:1%;
                left: 50%;
                color: #161414;
                font-size: 16px;
                font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            }

            .card-1{
                position: relative;
                margin-top:0%;
                display: flex;
                border: 1px solid rgb(32, 234, 230);
                border-radius: 20px;
                height: 100%;
                width: 100%;
                background-color: #f5f5f4;
                /* box-shadow: 3px 3px 3px rgba(1, 254, 233, 0.751); */
            }

            .card-1:hover{
                box-shadow: -3px 13px 3px rgba(254, 43, 1, 0.751);
            }

            .new-img{
                position: relative;
                margin-left: -129%;
                top :-27% ;
                margin-top:-85%;
                height: 100%;
                width: 100%;
                background-image: url("https://images.pexels.com/photos/8872196/pexels-photo-8872196.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
                /* filter: blur(2px);
                -webkit-filter: blur(2px); */
                opacity: 0.8;
                max-width: calc(100%-50%);
                overflow: hidden;
                background-size: cover;
                /* border-radius: 20px;     */
            }


            label {
                font-weight: bold;
                display: block;
                font-size: 1.3rem;
                font-family: Arial, Helvetica, sans-serif;
                color: rgb(34, 33, 33);
                /* margin-top: 20px; */
            }

            .input-field{
                position: relative;
                display: block;
                left: 45%;
                top:15%;
                padding: 0;

            }

            .input-field input{
                border:none;
                border-bottom: 2px solid grey;
                /* border-radius: 10px; */
                padding: 0.3rem;
                font-size: 1.3rem;
                color: rgb(42, 43, 40);
                background-color: #f5f5f5;
            }
            .input-field textarea{
                border-radius: 10px;
                padding: 0.3rem;
                font-size: 1.3rem;
                background-color: rgba(62, 62, 60, 0.694);

                color: rgb(35, 36, 33);
            }

            #f1-1{
                height: 70px;
                position: relative;
                top:0%;
                background-color: rgba(0, 255, 255, 0);
                /* width: 80%; */
                display: inline-flex;
                grid-template-columns: repeat(1, lfr);
                grid-gap:3rem;
            }


            ::placeholder{
                color: rgb(226, 19, 241);
            }

            .label-over{
                color: rgb(28, 235, 66);
            }
            #fna{
                /* padding: 4% 7%;  */
                margin-left: 50%;
            }
            #lna{
                /* padding: 4% 7%; */
                position: relative;
                margin-left:  70%;

            }
            #mob{
                position: relative;
                margin-left: 23%;
                margin-top: 5%;
            }

            #ema{
                position: relative;
                margin-left: 87%;
                margin-top: -8%;
            }
            #gen-position{
                position: relative;
                /* left: -10%; */
                font-size: 1.3rem;
                margin-left: 24%;
                margin-top: -6%;
            }
            #gen{
                position: relative;
                border-radius: 20px;
                margin-top:-8%;
                margin-left: 43%;
                padding: 5px;
            }
            #bir{
                position: relative;
                margin-top:13%;
                margin-left: 88%;
            }
            #idn{
                position: relative;
                margin-top:4%;
                margin-left: 23%;
            }

            #add{
                position: absolute;
                margin-top:15%;
                margin-left: 22%;
                background-color: #f5f5f5;
                /* border: none; */
                border: 2px solid grey;
                /* left: 100px;  */
            }

            #add-position{
                position: absolute;
                margin-top: 10%;
                margin-left: 23%;
            }

            #pin{
                position: relative;
                margin-top:13%;
                margin-left: 90%;

            }







            .submit-field{
                color: black;
                text-decoration: solid;
                text-align: center;
                font-size:16px;
                cursor:pointer;
                padding:10px 30px;
                border-radius: 20px;
                border-color: rgba(1, 254, 233, 0.646);
                background-color: aquamarine;
                font-family: sans-serif;
                transition: 0.4s;
            }

            html {
                scroll-behavior:smooth;
            }
            /* section {
             height: 10vh;
             position: relative;
            } */
            #section-1 {
                background-color: #2df84802;
                font-size: 16px;
                position: relative;
                top:-40px;
                left: 80px;
            }

            a#scroll-btn {
                position: absolute;
                top:85%;
                left: -9%;
                height: 4em;
                width: 2em;
                border: 0.1em solid #232121;
                bottom: 6em;
                border-radius: 3em;
            }
            a#scroll-btn:before {
                position: absolute;
                content: "";
                margin: auto;
                left: 0;
                right: 0;
                top: 1.2em;
                height: 1.2em;
                width: 1.2em;
                background-color: #191a19;
                border-radius: 50%;
                animation: move-down 2s infinite;
            }
            @keyframes move-down {
                90% {
                    opacity: 0.5;
                }
                100% {
                    transform: translateY(6.3em);
                    opacity: 0;
                }
            }
            a#scroll-btn:after {
                position: absolute;
                content:"SCROLL DOWN  ";
                width: 12em;
                display: block;
                width: 12em;
                text-align: center;
                left: -4.2em;
                bottom: -2.5em;
                font-size: 1.6em;
                color: #1d201d;
                letter-spacing: 3px;
                font-weight: 600;
            }

            #section-2 {
                position: relative;
                top:100px;
                /* top:10vh; */
                background-color: #d6a719;
                /* color: #ffffff;
                font-size: 16px;
                text-align: center; */
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                gap: 60em;
            }

            #space-in-section{
                position: relative;
                top:50px;
                height: 40px;
                background-color: rgba(177, 216, 239, 0.553);
                box-shadow: 1px 2px 2px 1px rgba(72, 81, 86, 0.553);

            }

        </style>


    </head>
    <body>

        <!-- <form action="registerformuser" method="get">
            <form action="registerformuser" method="post"> -->

        <main>

            <div class="card-1">
                <div  class="title-text"><h1>Patient Registration</h1></div>
                <!-- 
                    <div class="new-img"></div> -->
                <div class="input-field">
                    <label for="general" class="label-over">General</label>
                    <div id="f1-1" ><div class="f1">
                            <!-- <label for="fname" >First Name:</label> -->

                            <input type="text"  id="fna"  placeholder="First name" name="a" required></div>
                        <div class="f2">
                            <!-- <label for="last-name" >Last Name:</label> -->
                            <input type="text" id="lna"  placeholder=" Last name"  name="b" required></div></div>

                    <div>  <input type="tel" id="mob"  placeholder="Enter your phone number"  name="m" required></div>
                    <div>  <input type="email" id="ema"  placeholder="Enter your email"  name="n"></div>



                    <div> <input  id="bir" type="date" placeholder="Pick your birth date"  name="g" required></div>
                    <div> <label for="gender" id="gen-position">Gender: </label>
                        <select  id="gen" name="l"  required>
                            <option value=""></option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select></div><br>
                    <div> <input id="idn"  type="text" placeholder="ID number (if any)" name="e" ></div><br>
                    <div id="change"> <label for="address" id="add-position">Address:</label><textarea  id="add" placeholder="Enter your Address" name="c" required></textarea>
                        <input  id="pin" type="text" placeholder="Enter pincode"  name="p"></div><br>



                    <div class="new-img">
                        <!-- <img src="https://images.pexels.com/photos/8205060/pexels-photo-8205060.jpeg?auto=compress&cs=tinysrgb&w=600" alt=""> -->
                    </div>

                    <!-- </div> -->
                </div>


                <!-- <h1> Scroll Down button</h1> -->
                <section id="section-1"><a id="scroll-btn" href="#section-2"></a></section>
                <div id="space-in-section"></div>
                <section id="section-2"></section>

            </div>
        </main>

    </body>
</html>