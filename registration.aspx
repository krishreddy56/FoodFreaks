<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 250px;
            text-align: right;
        }
        .style3
        {
            width: 174px;
        }
        #Reset1
        {
            width: 69px;
            margin-left: 0px;
        }
        .style8
        {
            width: 250px;
            text-align: right;
            height: 106px;
            color: #660066;
        }
        .style9
        {
            width: 174px;
            height: 106px;
        }
        .style10
        {
            text-align: left;
            height: 106px;
        }
        .style17
        {
            width: 250px;
            text-align: right;
            height: 45px;
            color: #660066;
        }
        .style18
        {
            width: 174px;
            height: 45px;
        }
        .style19
        {
            text-align: left;
            height: 45px;
        }
        .style20
        {
            width: 250px;
            text-align: right;
            height: 85px;
        }
        .style21
        {
            width: 174px;
            height: 85px;
        }
        .style22
        {
            text-align: left;
            height: 85px;
        }
        .style23
        {
            width: 250px;
            text-align: right;
            height: 50px;
            color: #660066;
        }
        .style24
        {
            width: 174px;
            height: 50px;
        }
        .style25
        {
            text-align: left;
            height: 50px;
        }
        .style26
        {
            width: 250px;
            text-align: right;
            height: 84px;
        }
        .style27
        {
            width: 174px;
            height: 84px;
        }
        .style28
        {
            text-align: left;
            height: 84px;
        }
        .style30
        {
            color: #660066;
        }
    </style>
</head>
<body background="images/vector-of-purple-and-white-background-vines-pattern-by-onfocusmedia-2857.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style8" width="500px">
                <strong>User Name:</strong></td>
            <td class="style9">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="181px"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="•User Name is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17" width="300px">
                <strong>E-mail:</strong></td>
            <td class="style18" width="300px">
                <asp:TextBox ID="TextBoxemail" runat="server" 
                    ontextchanged="TextBoxemail_TextChanged" Width="180px"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="•E-mail is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="You must enter valid e-mail id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" width="300px">
                <span class="style30"><strong>Password</strong></span>:</td>
            <td class="style21">
                <asp:TextBox ID="TextBoxpwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxpwd" ErrorMessage="•Password is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23" width="300px">
                <strong>Confirm Password:</strong></td>
            <td class="style24">
                <asp:TextBox ID="TextBoxrepwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxrepwd" ErrorMessage="•Confirm Password is required." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxpwd" ControlToValidate="TextBoxrepwd" 
                    ErrorMessage="Both Passwords must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style26" width="300px">
                <span class="style30"><strong>Country</strong></span>:</td>
            <td class="style27">
                <asp:DropDownList ID="DropDownListcountry" runat="server" Width="180px">
                    <asp:ListItem>choose country</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListcountry" Display="Dynamic" 
                    ErrorMessage="select a country name" ForeColor="Red" 
                    InitialValue="choose country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="64px" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <p>
&nbsp;</p>
    </form>
</body>
</html>
