using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

public partial class fview : System.Web.UI.Page
{
    string ext,fname;
    protected void Page_Load(object sender, EventArgs e)
    {
        fname = Session["fname"].ToString();
        ext = Session["ext"].ToString();
        DateTime dt = DateTime.Now;
        label2.Text = Convert.ToString(dt);
        label3.Text = fname;
        label4.Text = ext;
        entxt.Visible = false;
        if (ext == ".txt" || ext == ".docx")
        {
            Encrypt1.Visible = true;
            Image1.Visible = false;
            Encrypt1.Text = File.ReadAllText(Server.MapPath("~/upload/") + label3.Text);
        }
        if (label4.Text == ".jpg" || label4.Text == ".png" || label4.Text == ".jpeg")
        {
            Image1.ImageUrl = "~/upload/" + label3.Text;
            Image1.Visible = true;
            Encrypt1.Visible = false;
        }
        if (ext == ".docx")
        {
            Enclick.Visible = false;
        }
    }
    protected void Enclick_Click(object sender, EventArgs e)
    {
        if (ext == ".txt" || ext == ".docx")
        {
            Encrypt1.Visible = true;
            Image1.Visible = false;
         
            Encrypt1.Text = Convert.ToBase64String(Encoding.ASCII.GetBytes(Encrypt1.Text));
            entxt.Visible = true;
            Response.Write("<script>alert('file Encrypted successfully')</script>");
        }
        if (ext == ".jpg" ||ext == ".png" || ext == ".jpeg")
        {
           
            
            Encrypt1.Visible = false;
            Image1.ImageUrl = "~/upload/" +"encryption.png" ;
            Image1.Visible = true;
            entxt.Visible = true;
            Response.Write("<script>alert('file Encrypted successfully')</script>");
        }
    }
}