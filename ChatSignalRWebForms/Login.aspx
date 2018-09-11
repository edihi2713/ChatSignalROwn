<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChatSignalRWebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <style>
        body {
        }

        .mainDiv {
            position: relative;
            height: auto;
            background-color: #1abc9c;
            height: 700px;
            opacity: 0.9;
        }


        .mainTitle {
            font-size: 30px;
            color: white;
            font-weight: bold;
        }

        .divRegister {
            position: absolute;
            border: 2px solid white;
            left: 35%;
            top: 25%;
            width: 30%;
            height: 300px;
            border-radius: 20px;
            padding: 10px;
            background-color: #ecf0f1;
        }

        .titleFormLogin {
            position: absolute;
            left: 36%;
            top: 13%;
        }

        .registerControl {
            margin-top: 15px;
            left: 10%;
            width: 80%;
            text-align: center;
        }

        .generalText {
            font-weight: bold;
            color: #2980b9;
            font-size: large;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="mainDiv">
                <div class="titleFormLogin">
                    <h2>Welcome to <strong>Direct Contact</strong></h2>
                </div>
                <div class="divRegister">
                    <div class="text-center">
                        <p class="generalText">Login to continue</p>
                    </div>
                    <div class="input-group registerControl">
                        <span class="input-group-addon transparent"><span class="glyphicon glyphicon-envelope"></span></span>
                        <input class="form-control" id="txtEmail" type="text" required="required" runat="server" placeholder="Type your email" />
                    </div>
                    <div class="input-group registerControl">
                        <span class="input-group-addon transparent"><span class="glyphicon glyphicon-lock"></span></span>
                        <input class="form-control left-border-none" placeholder="password" type="text" id="txtPassword" runat="server" />
                    </div>

                    <div class="input-group registerControl">
                        <button type="submit" class="btn btn-info btn-block btn-flat" id="btnLogin" onserverclick="btnSignIn_Click" runat="server">Login</button>
                    </div>
                    <div class="input-group registerControl">
                          <a href="Register.aspx" class="btn btn-primary btn-block btn-flat">New User - Registration</a>
                    </div>

                </div>

            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
