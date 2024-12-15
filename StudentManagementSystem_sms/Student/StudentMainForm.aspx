<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentMainForm.aspx.cs" Inherits="StudentManagementSystem_sms.Student.StudentMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
    h1{
        background-color:greenyellow;
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
    <h1>Welcome to student Main Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="lblStudentName" runat="server" CssClass="auto-style4" ForeColor="Blue" Text="Student Name"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperViewDueAmount" runat="server" CssClass="auto-style4" NavigateUrl="~/Student/ViewDueAmountForm.aspx">View Due Amount</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperViewPaymentStatement" runat="server" CssClass="auto-style4" NavigateUrl="~/Student/ViewPaymentsStatementForm.aspx">View Payment Statement</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperChangePassword" runat="server" CssClass="auto-style4" NavigateUrl="~/Student/StudentChangePasswordForm.aspx">Change Password</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperLogout" runat="server" CssClass="auto-style4" NavigateUrl="~/Student/StudentLoginForm.aspx">Logout</asp:HyperLink>
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
            </table>
        </div>
    </form>
</body>
</html>
