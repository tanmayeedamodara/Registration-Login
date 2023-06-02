<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Registration_2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style-TextBox {
            Height: 40px;
            width: 220px;
        }
        .style-2 {
            Height: 45px;
            Width: 210px;
            Font-Size: Medium;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    
        <table align="center">
            <tr>
                <td colspan="2" align="center" >
                    <h2>Registration Page</h2>
                </td>
            </tr>
            
            <tr>
                <td>
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your first name" CssClass="style-TextBox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Characters only" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]*$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is empty" ForeColor="Red" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your last name" CssClass="style-TextBox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Characters only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is empty" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Email id:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your email id" TextMode="Email" CssClass="style-TextBox"></asp:TextBox>
                    <asp:CustomValidator ID="CVmail" ErrorMessage="Email is already registered." ForeColor="Red" ControlToValidate="TextBox3" runat="server" OnServerValidate="ServerValidate"/>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email ID is empty" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Gender:</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Select Gender" CssClass="style-TextBox">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is empty" ForeColor="Red" ControlToValidate="DropDownList1" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Address:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Enter your address" CssClass="style-TextBox"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is empty" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Phone No:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your phone no" TextMode="Number" CssClass="style-TextBox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Phone No" ControlToValidate="TextBox5" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone field is empty" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Set password" CssClass="style-TextBox"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password field is empty" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <b>Confirm Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" placeholder="Confirm set password" CssClass="style-TextBox"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ForeColor="red"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm password field is empty" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="style-2"/>
                 &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx" Text="Already have an account?"></asp:HyperLink>
                 </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Register" Height="45px" Width="210px" CssClass="style-2"/>
                 </td>
            </tr>
        </table>

    </form>
</body>
</html>
