using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Response.Write("We provide a good ease for the freaks in serach of their favourite dishes or restaurants.we provide reviews for all the restaurants.we accept all user reviews.Thank you for visting us");
        //Label1.Text = "We provide a good ease for the freaks in serach of their favourite dishes or restaurants.we provide reviews for all the restaurants.we accept all user reviews.Thank you for visting us";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Response.Write("9551430154,7418364342,email-foodfreaks@gmail.com");
       // Label1.Text = "9551430154,7418364342,email-foodfreaks@gmail.com";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mainpage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}