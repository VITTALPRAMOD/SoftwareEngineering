using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    string id;
  //  SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\dotnet1\Documents\key.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Signup_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into regis(name,Email,usname,pwd,Dob,city)values(@name,@Email,@usname,@pwd,@Dob,@city)", con);
       
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@usname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Dob", TextBox6.Text);
        cmd.Parameters.AddWithValue("@city", TextBox7.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Data Submited')</script>");

    }
}