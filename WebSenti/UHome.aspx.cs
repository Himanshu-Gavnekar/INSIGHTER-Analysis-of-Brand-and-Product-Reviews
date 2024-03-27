using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Net;
namespace WebSenti
{
    public partial class UHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath ("~/debug/test.csv"));
                Literal2.Text  = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Literal2.Text = "Please select a file first";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            WebClient wc = new WebClient();
            string data = wc.DownloadString(TextBox1.Text);
            WebScrap ws = new WebSenti.WebScrap();
            ws.Preprocessing (Server.MapPath("~/debug"));
            Thread.Sleep(5000);
            string  k = ws.Apply(TextBox1.Text, Server.MapPath("~/URL"), Server.MapPath("~/Debug"));
            Literal3.Text = k;
            TextWriter wr = File.CreateText(Server.MapPath("~/debug/tt.txt"));
            wr.WriteLine("Hello World Hello World Hello World");
            wr.Close();
            Thread.Sleep(20000);
            Response.Redirect("Result.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            WebScrap ws = new WebSenti.WebScrap();
            ws.Preprocessing(Server.MapPath("~/debug"));
            Thread.Sleep(5000);
            TextWriter wr = File.CreateText(Server.MapPath("~/debug/tt.txt"));
            wr.WriteLine("Hello World Hello World Hello World");
            wr.Close();
            Thread.Sleep(20000);
            Response.Redirect("Result.aspx");
        }
    }
}