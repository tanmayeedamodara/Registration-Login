<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndividualDeets.aspx.cs" Inherits="Registration_2.IndividualDeets" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="2"><h1>Individual Details</h1></td>
            </tr>
            <tr>
                <td><b>First Name: </b></td>
                <td><asp:Label ID="Label1" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Last Name: </b></td>
                <td><asp:Label ID="Label2" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Email: </b></td>
                <td><asp:Label ID="lblEmail" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Gender: </b></td>
                <td><asp:Label ID="Label4" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Address: </b></td>
                <td><asp:Label ID="Label5" runat="server" /></td>
            </tr>
            <tr>
                <td><b>Phone: </b></td>
                <td><asp:Label ID="Label6" runat="server" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
