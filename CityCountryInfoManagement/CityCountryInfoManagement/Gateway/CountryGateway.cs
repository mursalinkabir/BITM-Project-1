using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using CityCountryInfoManagement.Models;

namespace CityCountryInfoManagement.Gateway
{
    public class CountryGateway
    {
        SqlConnection connection = new SqlConnection();
        string connectionString = WebConfigurationManager.ConnectionStrings["CountryDBConnString"].ConnectionString;
     
        public int Save(Country country)
        {
            connection.ConnectionString = connectionString;

            string query = "INSERT INTO Country  VALUES(@Name,@About)";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.Clear();
            command.Parameters.Add("Name", SqlDbType.VarChar);
            command.Parameters["Name"].Value = country.Name;
            command.Parameters.Add("About", SqlDbType.VarChar);
            command.Parameters["About"].Value = country.About;

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }  
        public bool IsCountryExists(Country country)
        {
            string query = "SELECT * FROM Country WHERE Name = '" + country.Name+"'" ;


            connection.ConnectionString = connectionString;

            SqlCommand command = new SqlCommand();
            command.CommandText = query;
            command.Connection = connection;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            bool isCountryExist = false;

            if (reader.HasRows)
            {
                isCountryExist = true;
            }
            connection.Close();

            return isCountryExist;
        }

        //public List<Country> GetByCountryName(string searchName)
        //{
        //    throw new NotImplementedException();
        //}

        public List<Country> LoadAllCountry()
        {

            string query = "SELECT * FROM Country ";

            connection.ConnectionString = connectionString;
            List<Country> countrylist = new List<Country>();

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            Country country = null;


            while (reader.Read())
            {
                country = new Country();
                country.Id = (int) reader["Id"];
                country.Name = reader["Name"].ToString();
                country.About = reader["About"].ToString();

             
                countrylist.Add(country);
               
            }
            reader.Close();
            connection.Close();

            return countrylist;
        }
    }
}