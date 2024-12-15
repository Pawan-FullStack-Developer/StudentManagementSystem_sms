<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="StudentManagementSystem_sms.AddStudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: x-large;
            font-weight: bold;
            margin-top: 0px;
        }
    </style>
</head>
<body bgcolor="lightgreen">
    <h1 align="center">WelCome To Admin</h1>
    <h3 align="center" class="auto-style4">Student Registration Form</h3>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td>
                    <asp:RadioButton ID="radioMale" runat="server" CssClass="auto-style2" GroupName="Gender" Text="Male" />
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:RadioButton ID="radioFemale" runat="server" CssClass="auto-style2" GroupName="Gender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Course</td>
                <td>
                    <asp:DropDownList ID="dropDownCourse" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="dropDownCourse_SelectedIndexChanged" Width="256px">
                        <asp:ListItem>Select Your Course</asp:ListItem>
                        <asp:ListItem>Java Fullstage</asp:ListItem>
                        <asp:ListItem>Python FullStage</asp:ListItem>
                        <asp:ListItem>java</asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                    </asp:DropDownList>
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="lblShowCourseFees" runat="server" CssClass="auto-style2" Font-Bold="True" ForeColor="DarkBlue" Text="Course Fees Will Display Here"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Final Fees</td>
                <td>
                    <asp:TextBox ID="txtFinalFees" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Fee Paid (first installment total amount)</td>
                <td>
                    <asp:TextBox ID="txtFeePaid" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Payment Mode</td>
                <td>
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
                <td class="auto-style2">Mobile Number </td>
                <td>
                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email Id</td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server" CssClass="auto-style2" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style2" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">PinCode</td>
                <td>
                    <asp:TextBox ID="txtPincode" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Graduation/UG</td>
                <td>
                    <asp:DropDownList ID="dropDownGraduation" runat="server" CssClass="auto-style2" Height="35px" Width="249px">
                        <asp:ListItem>Select Course Here</asp:ListItem>
                        <asp:ListItem>B.Tech</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>B sec</asp:ListItem>
                        <asp:ListItem>B com</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Branch</td>
                <td>
                    <asp:TextBox ID="txtBranch" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Year Of Passing</td>
                <td>
                    <asp:TextBox ID="txtYOP" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Percentage</td>
                <td>
                    <asp:TextBox ID="txtPercentage" runat="server" CssClass="auto-style2" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style2" OnClick="btnSubmit_Click" Text="Submit" />
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="btnClear" runat="server" CssClass="auto-style2" Text="Clear" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" CssClass="auto-style2" Text="Registration Status Will Display Here"></asp:Label>
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
    </form>
</body>
</html>
