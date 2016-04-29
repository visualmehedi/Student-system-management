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
    public partial class VisaStudenter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Database db = new Database();

                if (db.Connect())
                {
                    DataSet ds = new DataSet();
                    String queryString = "SELECT * FROM ELEV";
                    ds = db.GetDataSet(queryString);

                    lrlStudents.Text = "<h1>Studenter</h1>";
                    lrlStudents.Text += "<table border='1'><tr>";
                    
                    foreach (DataColumn column in ds.Tables[0].Columns)
                    {
                        lrlStudents.Text += "<th>" + column.ColumnName + "</th>"; 

                    }
                    lrlStudents.Text += "</tr>";

                    foreach(DataRow row in ds.Tables[0].Rows)
                    {
                        lrlStudents.Text += "<tr><td>" + row["ElevId"] + "</td>" +
                                           "<td>" + row["Enamn"] + "</td>" +
                                           "<td>" + row["Eadress"] + "</td>" +
                                           "<td>" + row["UtbildningsNr"] + "</td>";
                    }
                }
                else
                {
                    throw new Exception("Database connection error.");
                }
            }
        }
    }
}