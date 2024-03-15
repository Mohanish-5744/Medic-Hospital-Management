

<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style media="screen">
            *,
            *:before,
            *:after{
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }
            body{
                background-color: #0855ae;
            }
            .popup{
                background-color: #ffffff;
                width: 420px;
                padding: 30px 40px;
                position: absolute;
                transform: translate(-50%,-50%);
                left: 50%;
                top: 50%;
                border-radius: 8px;
                font-family: "Poppins",sans-serif;
                display: none;
                text-align: center;
            }
            .popup button{
                display: block;
                margin:  0 0 20px auto;
                background-color: transparent;
                font-size: 30px;
                color: #ffffff;
                background: #03549a;
                border-radius: 100%;
                width: 40px;
                height: 40px;
                border: none;
                outline: none;
                cursor: pointer;
            }
            .popup h2{
                margin-top: -20px;
            }
            .popup p{
                font-size: 14px;
                text-align: justify;
                margin: 20px 0;
                line-height: 25px;
            }
            a{
                display: block;
                width: 150px;
                position: relative;
                margin: 10px auto;
                text-align: center;
                background-color: #0f72e5;
                border-radius: 20px;
                color: #ffffff;
                text-decoration: none;
                padding: 8px 0;
            }
        </style>
    </head>
    <body>
        <div class="popup">

            <button id="close" onclick="history.back()">&times;</button>
                        <h2>Registration Succeeded!</h2>

            <p>
            <div align="center">
                <form:form action="admin" method="get">
                    <table border="0">
                        
                        <tr>
                            <td colspan="2" align="center">
                                <h3>Thank you for registering! Here's the review of your details:</h3>
                            </td>
                        </tr>
                        <tr>
                             
                            <td>serial_no:  ${serial_no}</td>

                        </tr>
                        <tr>
                            <td>lab_name:    ${lab_name}</td>

                        </tr>
                        <tr>
                            <td>floor:  ${floor}</td>

                        </tr>
                        <tr>
                            <td>room_no:    ${room_no}</td>

                        </tr>
                        <tr>
                            <td>doctors:  ${doctors}</td>

                        </tr>
                        <tr>
                            <td>assistant:    ${assistant}</td>

                        </tr>
                        <tr>
                            <td>salary_doctor:    ${salary_doctor}</td>

                        </tr>
                        <tr>
                            <td>salary_assistant:    ${salary_assistant}</td>

                        </tr>
                        <tr>
                            <td>cost_for_user:    ${cost_for_user}</td>

                        </tr>
                        
                    </table>
                </form:form>
            </div>
        </p>

    </div>
    Script
    <script type="text/javascript">
        window.addEventListener("load", function () {
            setTimeout(
                    function open(event) {
                        document.querySelector(".popup").style.display = "block";
                    },
                    )
        });

    </script>
</body>
</html>




