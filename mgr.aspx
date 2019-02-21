<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr.aspx.cs" Inherits="mgr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourcerestaurant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
            onselecting="SqlDataSource1_Selecting" 
            SelectCommand="SELECT * FROM [restaurant]"></asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataSourceID="SqlDataSourcerestaurant" ForeColor="Black" 
        GridLines="None" Height="277px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="654px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" 
                SortExpression="RESTAURANT_NAME" />
            <asp:BoundField DataField="RESTAURANT_STREET" HeaderText="RESTAURANT_STREET" 
                SortExpression="RESTAURANT_STREET" />
            <asp:BoundField DataField="RESTAURANT_COUNTRY" HeaderText="RESTAURANT_COUNTRY" 
                SortExpression="RESTAURANT_COUNTRY" />
            <asp:BoundField DataField="CUISINE" HeaderText="CUISINE" 
                SortExpression="CUISINE" />
            <asp:BoundField DataField="RESTAURANT_RATING" HeaderText="RESTAURANT_RATING" 
                SortExpression="RESTAURANT_RATING" />
            <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_CITY" 
                SortExpression="RESTAURANT_NAME" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    </form>
</body>
</html>
