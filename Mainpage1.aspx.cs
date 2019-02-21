using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("result is displayed");
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