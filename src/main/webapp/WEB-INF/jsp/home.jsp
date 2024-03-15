<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

        <title>Document</title>
        <!-- <link rel="stylesheet" href="signin.css"> -->
        <style>
            :root{
                /* --main-color:; */
                font-family: 'Poppines',sans-serif;
            }

            .container{
                height: 100vh;
                width: 100vw;
                background-color: rgba(186, 225, 240, 0);
                
                align-items: center;
                justify-content: center;
            }
            .contents{
                margin: auto;
                display: grid;
                grid-template-columns: 1.3fr 1fr;
                grid-gap:2vw;
                width: 90vw;
                height: 80vh;
                /*background-color: rgba(234, 205, 111, 0.073);*/
            }
            nav{
                display: block;
                width: 95vw;
                background-color: rgb(249, 251, 246);
                float: left;
                color: #fa3899;
                font-size: 2rem;
                margin:.8rem;
                margin-bottom: 5vh;
                text-indent: 2rem;
            }
            nav1{
                font-size: 1.2rem;
                 float: right;
            }
            .bk-img{
                background-image: url("https://images.pexels.com/photos/269077/pexels-photo-269077.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
                background-repeat: no-repeat;
                background-size: cover;
                max-height: 95%;
                overflow: hidden;
                animation: blurr 3s infinite both;
            }
            
            .cards{
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-template-rows: 1fr 1fr ;
                width: 100%;
                height: 90%;
                /* gap:.5rem; */
            }
            .admin-card{
                display: block;
                background-color: #fff;
                margin: 0.5rem;
                text-align: center;
                font-size: 1.3rem;
                border-radius: 3px;
            }

            .user-card{
                margin: 0.5rem;
                background-color: #fff;
                text-align: center;
                font-size: 1.3rem;
                border-radius: 3px;

            }
            .host-card{
                margin: 0.5rem;
                background-color: #fff;
                grid-column: 1/ span 3;
                grid-row: 2;
                font-size: 1.3rem;
                border-radius: 3px;
                text-align: center;
            }
            .admin-card img{
                display: flex;
                height: 15vh;
                margin: auto;
                margin-top: 2rem;
                margin-bottom: 2rem;
            }

            .user-card img{
                display: flex;
                height: 15vh;
                margin: auto;
                margin-top: 2rem;
                margin-bottom: 2rem;

            }
            .host-card img{
                display: flex;
                height: 15vh;
                margin: auto;
                margin-top: 2rem;

                margin-bottom: 2rem;
            }
            button{
                width: 10vw;
                height: 4.3vh;
                background-image: linear-gradient(to right, #48f8fe 0%, #12D8FA  51%, #1FA2FF  100%);
                color: #fff;
                font-size: 1rem;
                border: 0;
                border-radius: 10px;
                transition: 0.2s ease-in;

            }
            button:hover{
                background-image: linear-gradient(to right, #B3FFAB 0%, #12FFF7  100%);

                transform: translate(5px,-3px);
            }
            

        
            .geeks {
                width: 250px;
                height: 250px;
                overflow: hidden;
                margin: 0 auto;
            }
            .geeks img {
                width: 50%;
                transition: 0.5s all ease-in-out;
            }

            .geeks:hover img {
                transform: scale(1.5);
            }
            body video{
                position: absolute;
                right: 0;
                bottom: 0;
                /* z-index; */
                video:cover;
                z-index: -1;
            }
            #myVideo {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 100%;
                min-height: 100%;
            }
        </style>
    </head>
    <body>
        <video autoplay muted loop id="myVideo">
            <source src="https://assets.mixkit.co/videos/preview/mixkit-night-sky-with-stars-at-a-calm-lake-time-lapse-1704-large.mp4" type="video/mp4">
        </video>
        <div class="container">
            <a href="aboutus"><nav>Medic <nav1>about us</nav1></nav></a>
            
            <div class="contents">
                <div class="bk-img"></div>
                <div class="cards">
                    <div class="admin-card">
                        <div class="geeks">
                            <a href="admin"> <div>
                                    <img src="https://img1.wsimg.com/isteam/ip/ad9f9611-18da-4adc-8824-90b6c54786d4/492851_admin_256x256.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:365,h:365,cg:true" align="center"><br>
                                    <div id="admin-button"><button>Admin</button></div>
                                </div></a>
                        </div>
                    </div>
                    <div class="user-card">
                        <div class="geeks">
                            <a href="user"> <div>
                                    <img src="https://img1.wsimg.com/isteam/ip/ad9f9611-18da-4adc-8824-90b6c54786d4/205-2050440_customer-service-icon-admin-icon-0001.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:365,h:365,cg:true" width="140" height="140" align="center"><br>
                                    <div>
                                        <button id="patient-button">Patient</button>
                                    </div>
                                </div>
                        </div>
                        </a>
                    </div>
                    <div class="host-card">
                        <div class="geeks">
                            <a href="host"> <div>
                                    <img src="https://www.schooladmin.io/images/features-gif/reports-and-graphs-unscreen.gif" width="210" height="140" align="center"><br>
                                    <div  id="host-button" align="bottom">
                                        <button>Host</button></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="extra"></div>
        </div>
    </div>
</body>
</html>




