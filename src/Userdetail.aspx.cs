using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Userdetail : System.Web.UI.Page
{
    string na, em, un, pwd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["uname"].ToString();
        Panel2.Visible = false;
        con.Open();
        SqlDataAdapter sql = new SqlDataAdapter("Select *from regis where usname='"+Label6.Text+"'", con);
        DataSet ds = new DataSet();
        sql.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            na = ds.Tables[0].Rows[0]["name"].ToString();
            em = ds.Tables[0].Rows[0]["Email"].ToString();
            un = ds.Tables[0].Rows[0]["usname"].ToString();
            pwd = ds.Tables[0].Rows[0]["pwd"].ToString();
            Label1.Text = na;
            Label2.Text = em;
            Label3.Text = un;
            Label4.Text = pwd;
            con.Close();
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        TextBox1.Text = Label1.Text;
        TextBox2.Text = Label2.Text;
        TextBox3.Text = Label3.Text;
        TextBox4.Text = Label4.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update regis set name=@name,Email=@Email,usname=@usname,pwd=@pwd where usname='"+Label6.Text+"'", con);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@usname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox4.Text);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}