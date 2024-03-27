using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
namespace WebSenti
{
    public class DBConnection
    {
        public static string Connection
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["sentidbConnectionString"].ToString();
            }
        }
    }
}