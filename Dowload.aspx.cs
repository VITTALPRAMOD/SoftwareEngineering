using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Dowload : System.Web.UI.Page
{
    string fnam;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        fnam = Request.Params["catid"];
            Label1.Text = fnam;

            con.Close();
            con.Open();
            SqlCommand com1 = new SqlCommand("select Download from up where sno='" + fnam + "'", con);
            int un = Convert.ToInt32(com1.ExecuteScalar());
            int dow = un + 1;
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("update up set Download='" + dow + "' where sno='" + fnam + "'", con);
            cmd.Parameters.AddWithValue("Download", dow);
            cmd.ExecuteNonQuery();
            con.Close();           



            con.Open();
            SqlCommand com = new SqlCommand("select sno,files,fname,fext from up where sno=@sno", con);
            com.Parameters.AddWithValue("sno", fnam);
            SqlDataReader dr = com.ExecuteReader();


            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                //Response.ContentType = dr["filetype"].ToString();
                Response.AddHeader("content-disposition", "files;filename=" + dr["fname"] .ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["files"]);
                Response.End();
            }
           


        
    }
    protected void GridView1_RowCommand(object sender,GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
          //  GridViewRow row = GridView1.Rows[x];

          //  string fid = row.Cells[0].Text;

           
        }
    }
}