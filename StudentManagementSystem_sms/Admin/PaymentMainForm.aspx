<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentMainForm.aspx.cs" Inherits="StudentManagementSystem_sms.Admin.PaymentMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         h1{
             background-color:lightcoral;
             color:black;
             text-align:center
         }  
     .auto-style1 {
         width: 100%;
     }
         .auto-style2 {
             font-size: xx-large;
         }
 </style>
</head>
<body>
    <h1>Welcome To Payment Form</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Admin/PaymentDueForm.aspx">Do Payment/Know Due Amount</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="hyperViewFeeStatement" runat="server" CssClass="auto-style2" NavigateUrl="~/Admin/ViewFeeStatementForm.aspx">View Fee Statement</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style2" NavigateUrl="~/Admin/AdminMainForm.aspx">Back to Admin Home</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
