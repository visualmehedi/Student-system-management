using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Studiesystemet.Support;


namespace Studiesystemet
{
    public partial class VisaStudieuppgifter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database db = new Database();

            SqlDataSource1.ConnectionString = db.GetConnectionString();
            SqlDataSource1.SelectCommand = "SELECT fnamn, enamn, kursnamn, poang, niva FROM Studenter s, Studieuppgifter su, Kurser k " +
                                           "WHERE s.persnr = su.persnr " +
                                           "AND k.kurskod = su.kurskod " + 
                                           "ORDER BY enamn";
            gridViewStudieuppgifter.DataBind();
        }
    }
}