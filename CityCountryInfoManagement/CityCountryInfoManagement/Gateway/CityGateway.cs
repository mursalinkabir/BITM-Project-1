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
    public class CityGateway
    {
        SqlConnection connection = new SqlConnection();
        string connectionString = WebConfigurationManager.ConnectionStrings["CountryDBConnString"].ConnectionString;
        public  int Save(City city)
        {
            connection.ConnectionString = connectionString;
            string query = "INSERT INTO City VALUES(@CityName,@CityAbout,@Dwellers,@Location,@Weather,@CountryId)";
            SqlCommand Command = new SqlCommand(query,connection);
            Command.Parameters.Clear();
            Command.Parameters.Add("CityName", SqlDbType.VarChar);
            Command.Parameters["CityName"].Value = city.Name;
            Command.Parameters.Add("CityAbout", SqlDbType.VarChar);
            Command.Parameters["CityAbout"].Value = city.About;
            Command.Parameters.Add("Dwellers", SqlDbType.BigInt);
            Command.Parameters["Dwellers"].Value = city.Dwellers;
            Command.Parameters.Add("Location", SqlDbType.VarChar);
            Command.Parameters["Location"].Value = city.Location;
            Command.Parameters.Add("Weather", SqlDbType.VarChar);
            Command.Parameters["Weather"].Value = city.Weather;
            Command.Parameters.Add("CountryId", SqlDbType.Int);
            Command.Parameters["CountryId"].Value = city.CountryId;
            connection.Open();
            int rowAffected = Command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public  bool IsCityExists(City city)
        {
            string query = "SELECT * FROM City WHERE CityName = '" + city.Name+"'" ;


            connection.ConnectionString = connectionString;

            SqlCommand command = new SqlCommand();
            command.CommandText = query;
            command.Connection = connection;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            bool isCityExist = false;

            if (reader.HasRows)
            {
                isCityExist = true;
            }
            connection.Close();

            return isCityExist;
        }

        public List<City> LoadAllCities()
        {
            string query = "SELECT * FROM City ";

            connection.ConnectionString = connectionString;
            List<City> citylist = new List<City>();

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
           City city = null;


            while (reader.Read())
            {
                city = new City();
                city.Id = (int)reader["Id"];
                city.Name = reader["CityName"].ToString();
                
                city.About = reader["CityAbout"].ToString();
                city.Dwellers = Convert.ToInt32(reader["Dwellers"]);
                city.Location = reader["Location"].ToString();
                city.Weather = reader["Weather"].ToString();
                city.CountryId = reader["CountryId"].ToString();

                citylist.Add(city);

            }
            reader.Close();
            connection.Close();

            return citylist;
        }
    }
}