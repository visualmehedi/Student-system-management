using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Studiesystemet.Support;

namespace Studiesystemet
{
    public partial class VisaKurser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowCourses();
            }
        }

        private void ShowCourses()
        {
            SqlDataReader reader = null;

            try
            {
                Database db = new Database();
                if (db.Connect())
                {
                    reader = db.GetDataReader("SELECT * FROM Kurs");
                }
                else
                {
                    throw new Exception("Database connection error.");
                }

                if (reader != null)
                {
                    lrlCourses.Text = "<h2>Kurser</h2>";
                    while (reader.Read())
                    {
                        ReadSingleRow((IDataRecord)reader);
                    }
                }
                else
                {
                    lrlCourses.Text = "Det finns ingen data!";
                }
            }
            catch (Exception ex)
            {
                lrlCourses.Text = ex.Message;
            }

        }

        private void ReadSingleRow(IDataRecord record)
        {
            lrlCourses.Text += String.Format("{0}, {1}, {2}, {3}", 
                                              record[0], record[1], record[2], record[3]) + 
                                              "<br/>";
        }
    }
}