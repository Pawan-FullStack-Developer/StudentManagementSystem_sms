<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentDueForm.aspx.cs" Inherits="StudentManagementSystem_sms.Admin.PaymentDueForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         h1{
             background-color:forestgreen;
             color:black;
             text-align:center
         }  
     .auto-style1 {
         width: 100%;
     }
         .auto-style2 {
             font-size: xx-large;
         }
         .auto-style5 {
             font-size: x-large;
             font-weight: bold;
             margin-top: 0px;
         }
 </style>
</head>
<body>
    <h1>View Due Amount And Pay Now</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Select RegNo</td>
                <td>
                    <asp:TextBox ID="txtRegNo" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="btnShow" runat="server" CssClass="auto-style2" OnClick="btnShow_Click" Text="Show" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblStudentResult" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblCourse" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblMobile" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblFinalFeeAmount" runat="server" CssClass="auto-style2" ForeColor="Green" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblFeePaid" runat="server" CssClass="auto-style2" ForeColor="Blue" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblDueAmount" runat="server" CssClass="auto-style2" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Amount to Pay</td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Payment Mode</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="dropDownPaymentMode" runat="server" CssClass="auto-style5" Height="45px" Width="274px">
                        <asp:ListItem>Select Payment Mode</asp:ListItem>
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>UPI</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Net Banking</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/AdminMainForm.aspx">Back to Home Page</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
