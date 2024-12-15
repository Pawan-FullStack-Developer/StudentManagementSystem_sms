<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoginForm.aspx.cs" Inherits="StudentManagementSystem_sms.Student.StudentLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
    h1{
        background-color:black;
        color:ghostwhite;
        text-align:center
    }  
.auto-style1 {
    width: 100%;
                font-size: xx-large;
            }
            .auto-style2 {
                font-size: xx-large;
            }
    </style>
</head>
<body>
    <h1>Student Login Form......!!!!!!</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Regno</td>
                    <td>
                        <asp:TextBox ID="txtRegNo" runat="server" CssClass="auto-style2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" CssClass="auto-style2" OnClick="btnLogin_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
