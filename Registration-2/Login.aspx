<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 51px;
        }
        .auto-style2 {
            /*align-content;*/
            width: 50%;
            height: 51px;
        }
        .style-TextBox {
            Height: 40px;
            width: 220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:70%;" align="center">
            <tr>
                <td colspan="2" align="center">
                    <h2>Login Page</h2>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style1">
                    <b>Username</b>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" textmode="email" CssClass="style-TextBox"/>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style2">
                    <b>Password</b>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" textmode="password" CssClass="style-TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" Text="Login" runat="server" Height="45px" Width="90px" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="Register.aspx" runat="server" text="Don't have an account? Register now"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" Text="Click to login" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
