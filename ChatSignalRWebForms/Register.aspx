<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ChatSignalRWebForms.Register" %>

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
            font-size: 70px;
            color: white;
            font-weight: bold;
        }

        .divRegister {
            position: absolute;
            border: 2px solid white;
            left: 35%;
            top: 18%;
            width: 30%;
            height: 400px;
            border-radius: 20px;
            padding: 10px;
            background-color: #ecf0f1;
        }

        .registerControl {
            margin-top: 15px;
            left: 10%;
            width: 80%;
            text-align:center;
        }

        .generalText {
            font-weight: bold;
            color: #2980b9;
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="mainDiv">
            <div class="container-fluid text-center">
                <h1 class="mainTitle">Welcome</h1>
            </div>
            <div class="divRegister">
                <div class="text-center">
                    <p class="generalText">Register new Membership</p>
                </div>
                <div class="input-group registerControl">
                    <span class="input-group-addon transparent"><span class="glyphicon glyphicon-user"></span></span>
                    <input class="form-control" id="txtName" type="text" required="required" runat="server" placeholder="Type your name" />
                </div>
                <div class="input-group registerControl">
                    <span class="input-group-addon transparent"><span class="glyphicon glyphicon-envelope"></span></span>
                    <input class="form-control" id="txtEmail" type="text" required="required" runat="server" placeholder="Type your email" />
                </div>
                <div class="input-group registerControl">
                    <span class="input-group-addon transparent"><span class="glyphicon glyphicon-lock"></span></span>
                    <input class="form-control left-border-none" placeholder="User Name" type="text" id="txtPassword" runat="server"/>
                </div>
                <div class="input-group registerControl">
                    <span class="input-group-addon transparent"><span class="glyphicon glyphicon-log-in"></span></span>
                    <input class="form-control left-border-none" placeholder="Confirm your password" type="text" id="txtPasswordR" runat="server" />
                </div>

                <div class="input-group registerControl icheck-primary">
                      <input type="checkbox" id="chkTerms" required="required" runat="server" />
                        <label for="chkTerms">I agree to the </label>
                        <a href="#">terms</a>
                </div>
                <div class="input-group registerControl">
                    <button type="submit" class="btn btn-info btn-block btn-flat" id="btnRegister" onserverclick="btnRegister_ServerClick" runat="server">Register</button>
                </div>
                <div class="input-group registerControl">
                     <a href="Login.aspx" class="btn btn-primary btn-block btn-flat">I already have an account</a>
                </div>
                 
            </div>
        </div>
    </form>


    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
