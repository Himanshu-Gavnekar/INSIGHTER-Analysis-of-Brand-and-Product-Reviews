using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
namespace WebSenti
{
    public partial class Test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebClient wc = new WebClient();
            string data =wc.DownloadString(TextBox1.Text);
            Literal1.Text = data;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            WebScrap ws = new WebSenti.WebScrap();
           string a =ws.Preprocessing(Server.MapPath("~/debug"));
            Response.Write(a);
        }
    }
}