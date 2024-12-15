<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMainForm.aspx.cs" Inherits="StudentManagementSystem_sms.Admin.AdminMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         h1{
             background-color:black;
             color:yellow;
             text-align:center
         }  
     .auto-style1 {
         width: 100%;
     }
     </style>
</head>
<body>
    <h1>WelCome to Admin</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="hplStudentRegistration" runat="server" NavigateUrl="~/Admin/AddStudentForm.aspx">Student Registration</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="hplPayment" runat="server" NavigateUrl="~/Admin/PaymentMainForm.aspx">Payment</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="hplLogout" runat="server" NavigateUrl="~/Admin/AdminLoginForm.aspx">Logout</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
