using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
namespace WebSenti
{
    public class userTable :SQLDBTable
    {
        public userTable ():base ("UserTable",DBConnection.Connection)
        { }
    }
}