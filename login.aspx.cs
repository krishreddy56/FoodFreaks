using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button_login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where UserName='" + TextBoxUN.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());//this code is to check whether user already exists or not
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from UserData  where UserName='" + TextBoxUN.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxpwd.Text)
            {
                Session["New"] = TextBoxUN.Text;
                Response.Write("Password is correct");
                Response.Redirect("Mainpage.aspx");

            }
            else
            {
                Response.Write("Password is not correct");
            }

        }
        else
        {
            Response.Write("UserName is not correct");
 
        }
        
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
}