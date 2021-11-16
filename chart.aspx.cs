using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class chart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter("select fname,Download from   up ", con);
        DataSet ds = new DataSet();

        sd.Fill(ds);
        Chart1.DataSource = ds;
        con.Close();

    }
}