<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserListPage.aspx.cs" Inherits="Registration_2.UserListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User List Page</title>
    <style>
        table{
            border-collapse: collapse;
        }
        no-border{
            border:none;
        }
        th, td{
            border:1px solid black;
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr class="no-border">
                    <td colspan="4"><h2>User List</h2></td>
                </tr>
                <tr>
                    <th><b>First Name</b></th>
                    <th><b>Last Name</b></th>
                    <th><b>Email</b></th>
                    <th></th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="RptUsers_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Fname") %></td>
                            <td><%# Eval("Lname") %></td>
                            <td><%# Eval("Email") %></td>
                            <td>
                                <asp:Button ID="btnView" Text="View" runat="server" CommandName="ViewMail" CommandArgument='<%# Eval("Email") %>'/></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
