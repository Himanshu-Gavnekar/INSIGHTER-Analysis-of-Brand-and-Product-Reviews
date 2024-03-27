using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSenti
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            userTable ut = new userTable();
            if (ut.checkValue("EmailId", emailid.Value))
            {
                string[] data = ut.GetValues("EmailId", emailid.Value, 5);
                if (data[4].Equals(password.Value))
                {
                    Session["uid"] = data[0];
                    Session["uname"] = data[1];
                    Response.Redirect("UHome.aspx");
                }
                else
                {
                    Literal1.Text = "Invalid Email Id or password";
                }
            }
            else
            {
                Literal1.Text = "Invalid Email Id or password";
            }
        }
    }
}