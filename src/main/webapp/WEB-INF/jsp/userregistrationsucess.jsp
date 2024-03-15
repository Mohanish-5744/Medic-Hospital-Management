<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="successful.css">
        <!-- <link rel="stylesheet" href="amey1.css"> -->

        <style>
            :root{
                --main-color:rgb(253, 255, 250);
                --text-grey:rgba(30, 30, 30, 0.856);
                --border-grey:rgba(48, 57, 86, 0.751);
                --back:rgba(75, 146, 160, 0.607);
            }
            *{
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-size: 1rem;
            }
            .container, .content{
                display: flex;
                height: 100vh;
                width: 100vw;
                background-color: rgba(255, 255, 255, 0.914);
            }
            .content{
                display: flex;
                flex-direction: column;
                flex-wrap: wrap;
            }
            .cards{
                height: 100em;
                width: 100em;
                display: flex;
                flex-direction: row;

            }

            .avatar{
                display: flex;
                flex-direction: row;
                width: 20vw;
                background-color: rgba(255, 0, 0, 0.201);
                justify-content: center;


            }

            .avatar-content{
                display: inline-flex;
                flex-direction: column;
                row-gap: 1em;
                margin-top: 5vh;
            }

            .avatar-img{
                background-image: url("https://winteriscoming.net/wp-content/uploads/getty-images/2018/08/1937971.jpeg");
                background-repeat: no-repeat;
                background-size: cover;
                margin-bottom: 0;
                line-height: 100em;
                height: 150px;
                width: 150px;
                border-radius: 50%;
                border: 2px solid rgb(255, 31, 173);
            }
            .avatar span
            {
                display: flex;
                font-size: 1.7rem;

            }

            .user-info{
                display:grid;
                width: 80vw;
                height: 100vh;
                grid-template-rows: 1fr 10fr;
                grid-gap:1rem;

            }
            .data{
                display: grid;
                grid-template-rows: 1fr 10fr 1fr;
                margin: 2vw;
                margin-left: 5vw;
                width: 75vw;
                height: 90vh;

            }
            #heading{
                display: block;
                font-size: 1.7rem;
                float: left;
                margin: 1em;
                margin-left: 3vw;
                margin-top: 4vh;
            }

            .field{
                display: flex;
                flex-direction: column;
                /* color: black; */
                color: #ccc;
            }
            .field ul li{
                display: flex;
                flex-direction: column;
                list-style-type: none;
                margin-bottom: 2.1vh;
                color: black;
                width: 80%;
            }
            .field ul li span{
                display: block;
                height: 4vh;
                font-size: 1rem;

            }

            .answer{
                display: block;
                color: rgba(73, 72, 72, 0.849);
                float: left;
                text-indent: 1vw;
                width: 90%;
                border: 0;
                font-size: .8rem;
                border-bottom: 2px solid #471369bc;
            }

            .two-cards{
                display: grid;
                grid-template-columns: 1fr 1fr;
            }

            .submit-button{
                margin: auto;
            }
            .submit-button button{
                width: 20vw;
                padding: 4px;
                border-radius: 50px;
                background-color: rgba(37, 197, 109, 0.985);

                color:rgb(255, 255, 255);
                font-size: 1.3rem;
                font-weight:100;
                transition: .3s ease;
                border: 1px;

            }
            .submit-button button:hover{
                transform: translate(-4px,-3px);
                background-color: rgb(59, 182, 253);
                box-shadow: 1px 5px 12px 6px rgba(127, 255, 212, 0.562);
            }
            #msg1{
                display: block;
                margin: auto;
                font-size: 1.5rem;
                /* margin: auto; */
            }

            #logo{
                color: rgb(5, 192, 24);
                margin-right: 1em;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="success-message"></div>
                <div class="cards">
                    <div class="avatar">
                        <div class="avatar-content"><div class="avatar-img"></div>
                            <span>${firstname} ${lastname}</span></div>
                    </div>
                    <form action="user">
                        <div class="user-info">
                            <div class="data">
                                <div id="msg1"><span  class="las la-check-circle" id="logo"></span>Registration successful !</div>
                                <span id="heading">Account info</span>
                                <div class="two-cards">
                                    <div class="field">
                                        <ul>
                                            <li><span>First Name</span>
                                                <span class="answer">${firstname}</span>
                                            <li><span>Id</span>
                                                <span class="answer">${id}</span>
                                            <li><span>Email</span>
                                                <span class="answer">${email}</span>
                                            <li><span>Birth date</span>
                                                <span class="answer">${dateofbirth}</span>
                                            <li><span>Height</span>
                                                <span class="answer">${height} cm</span>
                                            <li><span>Gender</span>
                                                <span class="answer">${gender}</span>
                                            <li><span>Address</span>
                                                <span class="answer" id="address-field">${address}</span>

                                        </ul>
                                    </div>

                                    <div class="field" id="field2">
                                        <ul>
                                            <li><span>Last Name</span>
                                                <span class="answer">${lastname}</span>
                                            <li><span>Adhar card no</span>
                                                <span class="answer">${adharnumber}</span>
                                            <li><span>Phone number</span>
                                                <span class="answer">${mobailno}</span>
                                            <li><span>Age</span>
                                                <span class="answer">${age}</span>
                                            <li><span>Weigth</span>
                                                <span class="answer">${weight} Kg</span>
                                           
                                            <li><span>Pincode</span>
                                                <span class="answer" id="address-field">${pincode}</span>

                                        </ul>
                                    </div>

                                </div>
                                <div class="submit-button"><button >Login</button></div>

                                </form>
                            </div>

                        </div>
                </div>
            </div>

    </body>
</html>




