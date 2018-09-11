<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="ChatSignalRWebForms.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
     <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/jquery.signalR-2.2.2.min.js"></script>
    <script src="signalr/hubs"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-default"/>
    </div>
    </form>
     <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
