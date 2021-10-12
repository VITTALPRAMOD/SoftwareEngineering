using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Request : System.Web.UI.Page
{
    string id;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["uname"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("select *from regis where usname='"+Label6.Text+"'", con);
        cmd.ExecuteNonQuery();
        grid1.DataSource = cmd.ExecuteReader();
        grid1.DataBind();
        con.Close();
    }
    protected void Grid_click(object sender,GridViewCommandEventArgs e)
    {
        if(e.CommandName=="select")
        {
            int x =Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grid1.Rows[x];
            id = row.Cells[0].Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("update regis set req=@req where sno='" + id + "'", con);
            cmd.Parameters.AddWithValue("@req", "REQUEST");
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}