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
    public partial class UpdateStudent : System.Web.UI.Page
    {
        private static Database db;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Rensa att studenter saknas
            lblStudenterSaknas.Text = "";

            if (!IsPostBack)
            {
                db = new Database();

                SqlDataSource1.ConnectionString = db.GetConnectionString();

                // Fyll på persnr i dropdownlist
                fillCoursesToDropDownList();
            }
        }

        protected void fillCoursesToDropDownList()
        { 
            DataSet ds = new DataSet();
            String queryString = "SELECT KursId, Kursnamn FROM Kurs " + 
                                 "ORDER BY Kursnamn";
            ds = db.GetDataSet(queryString);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                ListItem listItem = new ListItem();
                listItem.Value = row["KursId"].ToString();
                listItem.Text = row["Kursnamn"].ToString();
                ddlStudenter.Items.Add(listItem);
            }
        }

        protected void ddlStudenter_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT e.ElevId, Enamn FROM Elev e, Elev_Kurs ek, Kurs k " +
                                           "WHERE e.ElevId = ek.ElevId " +
                                           "AND k.KursId = ek.KursId " +
                                           "AND ek.KursId = '" + ddlStudenter.SelectedValue.ToString() + "' " +
                                           "ORDER BY Enamn";
            if (db == null)
                db = new Database();
            SqlDataSource1.ConnectionString = db.GetConnectionString();
            dlstStudenter.DataSource = SqlDataSource1;
            dlstStudenter.DataBind();

            if (dlstStudenter.Items.Count == 0)
                lblStudenterSaknas.Text = "Det finns inga studenter registrerade på denna kurs.";

            // skriv ut kursnamn
            lblKursnamn.Text = "<h3>Kursnamn: " + ddlStudenter.SelectedItem.Text + "</h3>";
            lblKurskod.Text = "<h3>Kurskod: " + ddlStudenter.SelectedValue.ToString() + "</h3>";
        }
    }
}