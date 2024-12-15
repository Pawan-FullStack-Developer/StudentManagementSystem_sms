<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentChangePasswordForm.aspx.cs" Inherits="StudentManagementSystem_sms.Student.StudentChangePasswordForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <h1>Change Password..........!!!!!!</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Enter New Password</td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Both Password Should be Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style2" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style2" ForeColor="Blue" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
