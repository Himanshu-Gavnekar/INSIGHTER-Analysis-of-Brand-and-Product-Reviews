using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSenti
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(password.Value.Equals (password1.Value ))
            {
                userTable ut = new userTable();
                if (!ut.checkValue("EmailId", emailid.Value))
                {
                    ut.Insert("-1", username.Value, emailid.Value, mobileno.Value, password.Value);
                    Literal1.Text = "Registered Successfully";
                }
                else
                {
                    Literal1.Text = "this email id already registered";
                }
            }
            else
            {
                Literal1.Text = "Password Mismatch";
            }
        }
    }
}