using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserSearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        label2.Text = Session["uname"].ToString();
        panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select sno,fname,fext,Dt,fsize,image from up where fname LIKE '%" + Text1.Text + "%' ", con);
        cmd.ExecuteNonQuery();
        Datalist1.DataSource = cmd.ExecuteReader();
        Datalist1.DataBind();
        con.Close();
        panel2.Visible = true;
    }
}