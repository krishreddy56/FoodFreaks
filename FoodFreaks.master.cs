using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FoodFreaks : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
       
    }
    protected void lnkContactUS_Click(object sender, EventArgs e)
    {
        try
        {
            Session["misc"] = "contactus";
            Response.Redirect("Miscellaneous.aspx");
        }
        catch
        {
        }

    }
    protected void lnkAboutUS_Click(object sender, EventArgs e)
    {
        try
        {
            Session["misc"] = "aboutus";
            Response.Redirect("Miscellaneous.aspx");
        }
        catch
        {
        }
    }
    protected void lnkSignOut_Click1(object sender, EventArgs e)
    {
        try
        {
            Session["misc"] = "signout";
            Response.Redirect("Miscellaneous.aspx");
        }
        catch
        {
        }
    }
}
