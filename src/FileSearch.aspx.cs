﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FileSearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select sno,fname,fext,Dt,fsize,image from up", con);
        cmd.ExecuteNonQuery();
        Datalist1.DataSource = cmd.ExecuteReader();
        Datalist1.DataBind();
        con.Close();
    }
}