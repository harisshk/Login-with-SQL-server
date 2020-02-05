<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 238px;
        }
    </style>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
       
        <div class="login-box">
            <table style="margin:auto;border:5px solid white">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="UserName : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="textUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label></td>

                    <td>
                        <asp:TextBox ID="textPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <h1></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">

                    </td>
                    <td>
                <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                        </td>
                    <tr>
                    <td class="auto-style1"></td>
                    <td><asp:Label ID="labelErrorMessage" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </table>

        </div>
    </form>
</body>
</html>
