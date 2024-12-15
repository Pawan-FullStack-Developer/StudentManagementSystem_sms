<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainHomePageForm.aspx.cs" Inherits="StudentManagementSystem_sms.MainHomePageForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
    h1{
        background-color:lightpink;
        color:black;
        text-align:center
    }  
                .auto-style3 {
                    width: 100%;
                }
                .auto-style4 {
                    font-size: xx-large;
                }
    </style>
</head>
<body>
    <h1>WelCome To The Student Management System......!!!!!!!!!</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="hyperStudentLogin" runat="server" CssClass="auto-style4" NavigateUrl="~/Student/StudentLoginForm.aspx">Student Login</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hyperAdminLogin" runat="server" CssClass="auto-style4" NavigateUrl="~/Admin/AdminLoginForm.aspx">Admin Login</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
