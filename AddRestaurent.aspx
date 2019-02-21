<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRestaurent.aspx.cs" MasterPageFile="~/FoodFreaks.master" Inherits="AddRestaurent" %>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string insertQuery = "insert into Restaurant(Id,RESTAURANT_ID,RESTAURANT_NAME,RESTAURANT_STREET,RESTAURANT_CITY,RESTAURANT_COUNTRY,CUISINE,RESTAURANT_RATING) values (@ID ,@RESTAURANT_ID ,@RESTAURANT_NAME ,@RESTAURANT_STREET ,@RESTAURANT_CITY,@RESTAURANT_COUNTRY,@CUISINE,@RESTAURANT_RATING)";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["restaurantConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@ID", RestID);

            com.Parameters.AddWithValue("@RESTAURANT_ID", lblRestIDText .Text);
            com.Parameters.AddWithValue("@RESTAURANT_NAME", txtRestName .Text);
            com.Parameters.AddWithValue("@RESTAURANT_STREET",txtRestStreet .Text);
            com.Parameters.AddWithValue("@RESTAURANT_CITY",DropDownList1.SelectedItem .Text );
            com.Parameters.AddWithValue("@RESTAURANT_COUNTRY", txtRestCountry .Text );
            com.Parameters.AddWithValue("@CUISINE", DropDownList2.SelectedItem .Text  );
            com.Parameters.AddWithValue("@RESTAURANT_RATING",DropDownList3 .SelectedItem .Text);
            com.ExecuteNonQuery();
            Response.Redirect("mgr.aspx");

            lblMessage.Text = "Restaurant added successfully";
            conn.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error in adding data to the table." + ex.Message;
        }
    }
}
    }

  
   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 373px;
            height: 63px;
        }
        .auto-style3 {
            height: 63px;
        }
        .auto-style4 {
            width: 373px;
            height: 59px;
        }
        .auto-style5 {
            height: 59px;
        }
        .auto-style6 {
            width: 225px;
            height: 61px;
        }
        .auto-style7 {
            height: 61px;
        }
        .auto-style8 {
            width: 225px;
            height: 51px;
        }
        .auto-style9 {
            height: 51px;
        }
        .auto-style10 {
            width: 225px;
            height: 60px;
        }
        .auto-style11 {
            height: 60px;
        }
        .auto-style12 {
            width: 225px;
            height: 55px;
        }
        .auto-style13 {
            height: 55px;
        }
        .auto-style14 {
            width: 225px;
            height: 53px;
        }
        .auto-style15 {
            height: 53px;
        }
        .auto-style16 {
            width: 225px;
            height: 63px;
        }
        .auto-style17 {
            width: 225px;
            height: 59px;
        }
        .auto-style18 {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        
       
        
        <table>
            <tr>
                <td class="auto-style16"><asp:Label ID="lblRestID" runat="server" Text="Restaurent ID"></asp:Label></td>
                <td class="auto-style3"><asp:Label ID="lblRestIDText" runat="server" Text=""></asp:Label></td>
                
            </tr>
            <tr>
                <td class="auto-style17"><asp:Label ID="lblRestName" runat="server" Text="Restaurant Name"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtRestName" runat="server" Width="226px" 
                        ontextchanged="txtRestName_TextChanged"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="lblRestStreet" runat="server" Text="Restaurant Street"></asp:Label></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtRestStreet" runat="server" Width="226px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="lblRestCity" runat="server" Text="Restaurant City"></asp:Label></td>
                <td class="auto-style9">
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
                
            </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="lblRestCountry" runat="server" Text="Restaurant Country"></asp:Label></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtRestCountry" runat="server" Width="226px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style12"><asp:Label ID="lblCuisine" runat="server" Text="Cuisine"></asp:Label></td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="233px">
                    <asp:ListItem>choose your dish</asp:ListItem>
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Chinese</asp:ListItem>
                    <asp:ListItem>Continental</asp:ListItem>
                    <asp:ListItem>Beverages</asp:ListItem>
                    <asp:ListItem>japanese</asp:ListItem>
                </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style14"><asp:Label ID="lblRestRating" runat="server" Text="Restaurant Rating"></asp:Label></td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="226px">
                    <asp:ListItem>five star</asp:ListItem>
                    <asp:ListItem>three star</asp:ListItem>
                    <asp:ListItem>sea view</asp:ListItem>
                    <asp:ListItem>terrace view</asp:ListItem>
                </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style18"><asp:Button ID="btnAdd" runat="server" Text="Add Restaurant" OnClick="btnAdd_Click" /></td>
                
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                </td>
                
                
            </tr>
            
        </table>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
   </asp:Content>
