using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Studiesystemet.Support
{
    class Database
    {
        SqlConnection dbConnection = null;
        SqlCommand dbCommand = null;
        SqlDataReader reader = null;
        SqlDataAdapter adapter = null;
        DataSet dataSet = null;

        public Database()
        {
            // vad ska hända när objektet initieras
            string connectionString = @"Server=KUSHASUS;Database=NewtonCompDB;Trusted_Connection=True;";
            dbConnection = new SqlConnection(connectionString);
        }
         
        public bool Connect()
        {
            try
            {
                dbConnection.Open();
                return true;
            }
            catch
            {
                return false;
                throw new Exception();
            }
        }

        public bool Disconnect()
        {
            try
            {
                dbConnection.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public DataSet GetDataSet(string sqlString)
        {
            try
            {
                this.dataSet = new DataSet();
                adapter = new SqlDataAdapter();
                adapter.SelectCommand = new SqlCommand(
                    sqlString, this.dbConnection);
                adapter.Fill(this.dataSet);
                return this.dataSet;

            }
            catch
            {
                return null;
            }
        }

        public SqlDataReader GetDataReader(string sqlString)
        {
            try
            {
                dbCommand = new SqlCommand(sqlString);
                dbCommand.CommandType = CommandType.Text;
                dbCommand.Connection = dbConnection;
                reader = dbCommand.ExecuteReader();
                return reader;
            }
            catch
            {
                return null;
            }
        }

        public int Update(string sqlString)
        {
            return this.Execute(sqlString);
        }

        public int Insert(string sqlString)
        {
            return this.Execute(sqlString);
        }

        public int Delete(string sqlString)
        {
            return this.Execute(sqlString);
        }

        private int Execute(string sqlString)
        {
            dbCommand = new SqlCommand(sqlString);
            dbCommand.Connection = this.dbConnection;
            return dbCommand.ExecuteNonQuery();
        }

        public String GetConnectionString()
        {
            return this.dbConnection.ConnectionString;
        }
     }
}
