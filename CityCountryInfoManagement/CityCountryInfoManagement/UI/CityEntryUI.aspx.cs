using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CityCountryInfoManagement.BLL;
using CityCountryInfoManagement.Models;

namespace CityCountryInfoManagement.UI
{
    public partial class CityEntryUI : System.Web.UI.Page
    {
        CityManager cityManager = new CityManager();
        CountryManager countryManager = new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllCountries();
            LoadAllCities();
        }

        private void LoadAllCities()
        {
            cityEntryGridView.DataSource = cityManager.LoadAllCities();
            cityEntryGridView.DataBind();
        }

        private void LoadAllCountries()
        {
            List<Country> countries = countryManager.LoadAllCountry();
            cityCountryDropdownList.DataSource = countries;
            cityCountryDropdownList.DataTextField = "Name";
            cityCountryDropdownList.DataValueField = "Id";
            cityCountryDropdownList.DataBind();
        }

        protected void cityEntrySaveButton_Click(object sender, EventArgs e)
        {
           
            City city = new City();
            city.Name = cityEntryNameTextBox.Text;
            city.Location = cityLocationTextBox.Text;
            city.About = Request.Form["cityEntryAbout"];
            city.Weather = WeatherTextBox.Text;
            city.Dwellers = Convert.ToInt32(CityDwellersTextBox.Text);
            city.CountryId = cityCountryDropdownList.SelectedValue;
            CitymessageLabel.Text = cityManager.Save(city);
        }
    }
}