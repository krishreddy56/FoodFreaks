using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddRestaurent : System.Web.UI.Page
{

    public int RestID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Random rnd = new Random();
            RestID = rnd.Next(100000, 999999);
            lblRestIDText.Text = "REST" + RestID;
        }
        catch (Exception ex)
        {
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("home.aspx");
        }
        catch (Exception ex)
        {
        }
    }
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