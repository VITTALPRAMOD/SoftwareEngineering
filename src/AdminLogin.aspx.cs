using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (text1.Text == "admin" && text2.Text == "admin")
        {
            Response.Redirect("Adminhome.aspx");

        }
        else
        {
            Response.Write("<script>alert('Invalid Login')</script>");
        }

    }
}