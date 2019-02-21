using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write("result is displayed");

        //GridRestaurant .DataSource
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["restaurantConnectionString"].ConnectionString))
        {
            conn.Open();
            
            string query = "select RESTAURANT_NAME,RESTAURANT_CITY,RESTAURANT_COUNTRY,CUISINE,RESTAURANT_RATING from restaurant where RESTAURANT_CITY like '%" + DropDownList1 .SelectedItem .Text + "%' or  CUISINE like '%" + DropDownList2 .SelectedItem .Text +"%' or  RESTAURANT_RATING like '%" + DropDownList3 .SelectedItem .Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query ,conn);
            DataTable tab = new DataTable();
            da.Fill(tab);
            GridRestaurant.DataSource = tab;
            GridRestaurant.DataBind();
            conn.Close();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Write("contact us at 9551430154,7418364342,email-foodfreaks@gmail.com");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("We provide a good ease for the freaks in serach of their favourite dishes or restaurants.we provide reviews for all the restaurants.we accept all user reviews.Thank you for visting us");
            
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}