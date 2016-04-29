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
    public partial class UppdateraKurser : System.Web.UI.Page
    {
        private static Database db;

        protected void Page_Load(object sender, EventArgs e)
        {   
            if(!IsPostBack)
            {
                db = new Database();
                fillCoursesToDropDownList();
            }     
        }

        protected void fillCoursesToDropDownList()
        {
            ddlCourses.ClearSelection();
            ddlCourses.Items.Clear();
            DataSet ds = new DataSet();
            String queryString = "SELECT kurskod, kursnamn FROM Kurser " +
                                 "ORDER BY kursnamn";
            ds = db.GetDataSet(queryString);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                ListItem listItem = new ListItem();
                listItem.Value = row["kurskod"].ToString();
                listItem.Text = row["kursnamn"].ToString();
                ddlCourses.Items.Add(listItem);
            }
        }

        protected void ddlCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblStatus.Text = ""; // Rensa
            SqlDataSource1.ConnectionString = db.GetConnectionString();
            SqlDataSource1.SelectCommand = "SELECT * FROM KURSER " + 
                                           "WHERE kurskod = '" + ddlCourses.SelectedValue.ToString() + "'";
            detailsViewCourses.DataSource = SqlDataSource1;
            detailsViewCourses.DataBind();
           
        }

        protected void detailsViewCourses_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            SqlDataSource1.UpdateCommand = "UPDATE Kurser SET " +
                                           "Kursnamn = '" + e.NewValues[1].ToString() + "', " +
                                           "Poang = " + e.NewValues[2] + ", " +
                                           "Niva = '" + e.NewValues[3].ToString() + "' " + 
                                           "WHERE kurskod = '" + ddlCourses.SelectedValue.ToString() + "'";
            if (db == null)
                db = new Database();

            SqlDataSource1.ConnectionString = db.GetConnectionString();
            SqlDataSource1.Update();
            SqlDataSource1.DataBind();
            fillCoursesToDropDownList();
            detailsViewCourses.DataSource = SqlDataSource1;
            detailsViewCourses.DataBind();
            lblStatus.Text = "Posten är uppdaterad. Välj ny kurs att uppdatera.";
        }
       
    }
}