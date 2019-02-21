<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            font-weight: 700;
            text-align: center;
        }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
        }
        .style3
        {
            font-size: smaller;
        }
        .style4
        {
            font-size: larger;
            width: 577px;
        }
        .style6
        {
            font-size: larger;
            width: 501px;
        }
        .style7
        {
            font-size: larger;
            width: 171px;
            text-align: left;
        }
        .style8
        {
            font-size: larger;
            text-align: right;
            width: 501px;
            height: 43px;
        }
        .style9
        {
            font-size: larger;
            width: 171px;
            height: 43px;
        }
        .style10
        {
            font-size: smaller;
            height: 43px;
            width: 577px;
            text-align: left;
        }
        .style11
        {
            font-size: larger;
            text-align: right;
            width: 501px;
            height: 50px;
        }
        .style12
        {
            font-size: larger;
            width: 171px;
            height: 50px;
        }
        .style13
        {
            font-size: larger;
            height: 50px;
            width: 577px;
            text-align: left;
        }
        .style14
        {
            font-size: larger;
            width: 501px;
            height: 30px;
        }
        .style15
        {
            font-size: larger;
            width: 171px;
            height: 30px;
        }
        .style16
        {
            font-size: larger;
            width: 577px;
            height: 30px;
        }
        .style17
        {
            font-size: larger;
            width: 171px;
            text-align: left;
            height: 30px;
        }
        .style18
        {
            font-size: xx-large;
            font-weight: normal;
            text-decoration: underline;
            color: #660066;
        }
    </style>
</head>
<body background="images/vector-of-purple-and-white-background-vines-pattern-by-onfocusmedia-2857.jpg" 
    style="color: #660066; margin-bottom: 19px">
    <form id="form1" runat="server">
    <span class="style18"><em>FREAKS LOGIN</em></span><table class="style1">
        <tr class="style3">
            <td class="style14">
            </td>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
        </tr>
        <span class="style2">
        <tr class="style3">
            <td class="style8">
                User Name</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxUN" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="194px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Please enter valid user name" 
                    ForeColor="Red" style="font-size: larger"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style3">
            <td class="style11">
                Password</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxpwd" runat="server" TextMode="Password" Width="193px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxpwd" ErrorMessage="please enter correct password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style3">
            <td class="style14">
            </td>
            <td class="style17">
                <asp:Button ID="Button_login" runat="server" onclick="Button_login_Click" 
                    Text="Login" Width="79px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="cancel" Width="67px" />
            </td>
            <td class="style16">
                <p style="text-align: left">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Signup?</asp:LinkButton>
                </p>
            </td>
        </tr>
        <tr class="style3">
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    </span>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
