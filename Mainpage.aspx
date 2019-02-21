<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mainpage.aspx.cs" MasterPageFile ="~/FoodFreaks.master" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style7
        {
            width: 364px;
            font-size :large ;
        }
        .style8
        {
            width: 838px;
        }
        .style9
        {
            width: 364px;
            font-size: xx-large;
            text-align: right;
        }
        .style11
        {
            width: 364px;
            height: 23px;
        }
        .style12
        {
            width: 838px;
            height: 23px;
        }
        .style13
        {
            height: 23px;
        }
        .auto-style7 {
            width: 515px;
            font-size: xx-large;
            text-align: right;
        }
        .auto-style9 {
            height: 23px;
            width: 515px;
        }
        .auto-style10 {
            width: 515px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <table class="style1" >
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">

            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Search by place</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="227px">
                    <asp:ListItem>choose your place</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Bangalore</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kolkatta</asp:ListItem>
                    <asp:ListItem>Cochin</asp:ListItem>
                    <asp:ListItem>Vikarabad</asp:ListItem>
                    <asp:ListItem>London</asp:ListItem>
                    <asp:ListItem>Newyork</asp:ListItem>
                    <asp:ListItem>Sydney</asp:ListItem>
                    <asp:ListItem>hyderabad</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Search by cuisine</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="226px">
                    <asp:ListItem>choose your dish</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Chinese</asp:ListItem>
                    <asp:ListItem>Continental</asp:ListItem>
                    <asp:ListItem>Beverages</asp:ListItem>
                    <asp:ListItem>japanese</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                search by restaurants</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="226px">
                    <asp:ListItem>five star</asp:ListItem>
                    <asp:ListItem>three star</asp:ListItem>
                    <asp:ListItem>sea view</asp:ListItem>
                    <asp:ListItem>terrace view</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                </td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GO" 
                    Width="77px" Height="30px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click1" Font-Size ="Large" >back to home</asp:LinkButton>
            </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="style8">
                <asp:GridView ID="GridRestaurant" runat="server" Font-Size ="Large" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" >
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
            </td>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
            <td class="style13">
            </td>
            <td class="style13">
            </td>
        </tr>
    </table>
 </asp:Content>
