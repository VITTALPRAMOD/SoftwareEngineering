using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Uchart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        label2.Text = Session["uname"].ToString();
        con.Open();
        string sql = "SELECT upby, fname, Download FROM up WHERE upby='"+label2.Text+"'";
        SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
        DataSet dataSet = new DataSet();
        adapter.Fill(dataSet);
        Chart1.DataSource = dataSet;
        con.Close();
    }
}