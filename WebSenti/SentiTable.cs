using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
namespace WebSenti
{
    public class SentiTable :SQLDBTable
    {
        public SentiTable ():base("Sentitable",DBConnection.Connection)
        { }
    }
}