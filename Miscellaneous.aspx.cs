using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Threading;

public partial class Miscellaneous : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["misc"].ToString() == "signout")
            {
                Session.Abandon();

                FormsAuthentication.SignOut();
                
                lblMessage.Text = "Successfully logged out of the website";
            }
            if (Session["misc"].ToString() == "aboutus")
            {

                lblMessage.Text = "We provide a good ease for the freaks in serach of their favourite dishes or restaurants.we provide reviews for all the restaurants.we accept all user reviews.Thank you for visting us";
            }
            if (Session["misc"].ToString() == "contactus")
            {

                lblMessage.Text = "9551430154,7418364342,email-foodfreaks@gmail.com";
            }

        }
        catch
        {
        }
    }
}