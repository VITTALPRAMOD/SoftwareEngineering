using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Net;

public partial class Fileupload : System.Web.UI.Page
{
    string fname, ext, filesize,ext1,fname1,img;
    float filesiz;
    StringBuilder sb = new StringBuilder();
    search ob = new search();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["key"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        label4.Text = Session["uname"].ToString();
        DateTime dt = DateTime.Now;
        label2.Text = Convert.ToString(dt);
        panel2.Visible = false;
        label1.Text =  Convert.ToString(ob.fileid());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        fileupload1.SaveAs(Server.MapPath("~/upload/") + fileupload1.FileName);
        fname = Path.GetFileName(fileupload1.FileName);
        fname1 = Path.GetFileName(fileupload1.FileName);
        ext1 = Path.GetExtension(fileupload1.FileName);
        Session["ext"] = ext1;
        Session["fname"] = fname1;
        ext = Path.GetExtension(fileupload1.FileName);
        filesiz = (float)fileupload1.PostedFile.ContentLength / 1024;

        filesize = Convert.ToString(filesiz) + "KB";
        // Panel2.Visible = true;
        if (fileupload1.PostedFile == null || String.IsNullOrEmpty(fileupload1.PostedFile.FileName) || fileupload1.PostedFile.InputStream == null || text1.Text == "")
        {
            Response.Write("<script>alert('Error - unable to upload file. Please try again.')</script>");
        }
        else
        {
            ext = Path.GetExtension(fileupload1.FileName);
            bool useHashing = true;
            string clearText = text1.Text.Trim();
            string cipherText = encryption.Encrypt(clearText, ext, true);

            //Response.Write(clearText + "<br>");
            sb.Append(clearText + "<br>");
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(clearText);
            System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
            string key = (string)settingsReader.GetValue("SecurityKey", typeof(string));
            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                hashmd5.Clear();
            }
            else
                keyArray = UTF8Encoding.UTF8.GetBytes(key);

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            tdes.Clear();
            for (int x = 0; x < toEncryptArray.Length; x++)
            {
                //Response.Write(toEncryptArray[x].ToString() + "<br>");
                sb.Append(toEncryptArray[x].ToString() + "<br>");
            }
            sb.Append("<br>");
            for (int c = 0; c < resultArray.Length; c++)
            {
                // Response.Write(resultArray[c].ToString() + "<br>");
                sb.Append(resultArray[c].ToString() + "<br>");
            }
            //Response.Write(Convert.ToBase64String(resultArray, 0, resultArray.Length));
            sb.Append(Convert.ToBase64String(resultArray, 0, resultArray.Length) + "<br>");
            sb.Append("<br><br>");


            lbl_encrypt.Visible = false;
            lbl_encrypt.Text = cipherText;
            byte[] filebytes = new byte[fileupload1.PostedFile.InputStream.Length + 1];
            fileupload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            if (ext == ".txt")
            {
                 img="txt.png";
            }
            else if (ext == ".docx")
            {
                img = "doc.png";
            }
            else
            {
                img = fname1;
            }
            ob.uploadfile(label4.Text,fname, ext1, filesize, filebytes, label2.Text, lbl_encrypt.Text,img);
            Cloudupload();
            Response.Redirect("fview.aspx");
            panel2.Visible = true;
            if (ext == ".txt" || ext == ".docx")
            {
                Encrypt1.Text = File.ReadAllText(Server.MapPath("~/upload/")+fname);
                Encrypt1.Visible = true;
                Image1.Visible = false;
            }
            if (ext == ".jpf" || ext == ".png" || ext == ".jpeg")
            {
                Image1.ImageUrl="~/upload/"+fname;
                Image1.Visible = true;
                Encrypt1.Visible = false;
            }

           
            
        }

    }
    public void Cloudupload()
{
        FtpWebRequest myFtpWebRequest;
            FtpWebResponse myFtpWebResponse;
            StreamWriter myStreamWriter;
            NetworkCredential myNetworkCredential;
            StreamWriter myStream;
            StreamReader myReadStream;

            myFtpWebRequest = (FtpWebRequest)FtpWebRequest.Create(new Uri("ftp://ftp.drivehq.com/" + fileupload1.FileName));

            myNetworkCredential = new NetworkCredential();

            myNetworkCredential.UserName = "pramod09";
            myNetworkCredential.Password = "software_engineering";
            myFtpWebRequest.Credentials = myNetworkCredential;

            myFtpWebRequest.Method = WebRequestMethods.Ftp.UploadFile;
            myFtpWebRequest.UseBinary = true;

            myStream = new StreamWriter(myFtpWebRequest.GetRequestStream());
            myStreamWriter = myStream;
            fileupload1.SaveAs(Server.MapPath("~/upload/") + fileupload1.FileName);
            myReadStream = new StreamReader(Server.MapPath("~/upload/") + fileupload1.FileName );
            myStreamWriter.Write(myReadStream.ReadToEnd()+fileupload1);
            myStreamWriter.Close();
            myReadStream.Close();

            myFtpWebResponse = (FtpWebResponse)myFtpWebRequest.GetResponse();

            // Label16.Text = "File Uploaded Successfully..";
            myFtpWebResponse.Close();

        

          
           // grid();
            //Literal1.Text = sb.ToString();
        }


    protected void Enclick_Click(object sender, EventArgs e)
    {

    }
}
