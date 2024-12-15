<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDueAmountForm.aspx.cs" Inherits="StudentManagementSystem_sms.Student.ViewDueAmountForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
h1{
    background-color:lightseagreen;
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
    <h1>Show Due Amount...!!!!</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblName" runat="server" CssClass="auto-style4" ForeColor="Blue" Text="Student Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblTotalFee" runat="server" CssClass="auto-style4" ForeColor="Fuchsia" Text="Total Fee / Final Fee"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblPaidFee" runat="server" CssClass="auto-style4" Text="Paid Fee"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblDueAmount" runat="server" CssClass="auto-style4" ForeColor="Red" Text="Due Amount"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperBack" runat="server" NavigateUrl="~/Student/StudentMainForm.aspx">Back</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
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
        </div>
    </form>
</body>
</html>
