using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    string name, pwd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select usname,pwd from regis where usname='" + text1.Text + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            name=dr["usname"].ToString();
             pwd = dr["pwd"].ToString();
            

        }
        if (text1.Text == name && text2.Text == pwd)
        {
            Session["uname"] = name;
            Response.Redirect("Userhome.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}