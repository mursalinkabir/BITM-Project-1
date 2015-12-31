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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cityEntrySaveButton_Click(object sender, EventArgs e)
        {
            CityManager cityManager =new CityManager();
            City city = new City();
            city.Name = cityEntryNameTextBox.Text;
            city.Location = cityLocationTextBox.Text;
            city.About = Request.Form["cityEntryAbout"];
            city.Weather = WeatherTextBox.Text;
            city.Dwellers = CityDwellersTextBox.Text;
            city.CountryId = cityCountryId.SelectedValue;
        }
    }
}