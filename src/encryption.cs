using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Net.Mail;

/// <summary>
/// Summary description for encryption
/// </summary>
public class encryption
{

public static string Encrypt(string toEncrypt, string fileext, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
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
        return Convert.ToBase64String(resultArray, 0, resultArray.Length);

    }
    public void register(string id, string unam, string ps, string num, string em, string city, string fnm, string dat, string ip4addr)
    {
        try
        {
            cn.Open();
            com = new SqlCommand("insert into registration(userid,usernam,password,contactno,email,city,filenam,dat,ipaddr)values(@userid,@usernam,@password,@contactno,@email,@city,@filenam,@dat,@ipaddr)", cn);

            com.Parameters.AddWithValue("@userid", id);
            com.Parameters.AddWithValue("@usernam", unam);
            com.Parameters.AddWithValue("@password", ps);
            com.Parameters.AddWithValue("@contactno", num);
            com.Parameters.AddWithValue("@email", em);
            com.Parameters.AddWithValue("@city", city);
            com.Parameters.AddWithValue("@filenam", fnm);
            com.Parameters.AddWithValue("@dat", dat);
            com.Parameters.AddWithValue("@ipaddr", ip4addr);
            com.ExecuteNonQuery();
            cn.Close();

        }
        catch (Exception e)
        {
           
        }
    }
    
public DataSet checkuser(string usr, string psw, string id)
    {
        cn.Open();
        SqlDataAdapter adt = new SqlDataAdapter("select usernam,password,userid from registration where usernam='" + usr + "' and password='" + psw + "' and userid='" + id + "'", cn);
        DataSet da = new DataSet();
        adt.Fill(da);
        cn.Close();
        return da;

    }
    
    }
