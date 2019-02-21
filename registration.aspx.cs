using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where UserName='"+ TextBoxUN.Text +"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());//this code is to check whether user already exists or not
            if (temp == 1)
            {
                Response.Write("User already Exists");//if exits it displays this message& cannot save the new user with same user name
            
            }
            conn.Close();
        }

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxemail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserData (ID,UserName,Email,Password,Country) values (@ID ,@Uname ,@email ,@password ,@country)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@ID",newGUID.ToString());

            com.Parameters.AddWithValue("@Uname",TextBoxUN.Text );
            com.Parameters.AddWithValue("@email", TextBoxemail.Text);
            com.Parameters.AddWithValue("@password", TextBoxpwd.Text);
            com.Parameters.AddWithValue("@country", DropDownListcountry.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            Response.Write("Registration is successfull" );
            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
        
        
    }
    protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}