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
    public partial class ExekveraKurser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Uppdatera direkt i koden
            try 
            {
                Database db = new Database();
                if (db.Connect())
                {
                    string queryString = "UPDATE KURSER SET poang = 10 " +
                                         "WHERE kurskod = 'EI0130'"; // 5 poäng
                    int antal = db.Update(queryString);

                    if (antal > 0)
                    {
                        lrlCustom.Text += antal + " poster uppdaterades i kurser.<br/>";
                    }
                    else
                    {
                        lrlCustom.Text += "Ingen post kunde uppdateras.<br/>";
                    }

                    queryString = "DELETE FROM KURSER " +
                                   "WHERE kurskod = 'EI0130'";
                    antal = db.Delete(queryString);

                    if (antal > 0)
                    {
                        lrlCustom.Text += antal + " poster togs bort i kurser.<br/>";
                    }
                    else
                    {
                        lrlCustom.Text += "Ingen post kunde tas bort.<br/>";
                    }

                    queryString = "INSERT INTO KURSER VALUES(" +
                                         "'EI0360', 'DATABASER 1', 5, 'A')";
                    antal = db.Insert(queryString);

                    if (antal > 0)
                    {
                        lrlCustom.Text += antal + " poster lades till i kurser.<br/>";
                    }
                    else
                    {
                        lrlCustom.Text += "Ingen post kunde läggas till.<br/>";
                    }
                }

                db.Disconnect();
            }
            catch(Exception ex)
            {
                lrlCustom.Text = ex.Message + "<br/>" + ex.Source + "<br/>" + ex.StackTrace;
            }
            
        }
    }
}