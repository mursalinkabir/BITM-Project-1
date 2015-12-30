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
    public partial class CountryEntryUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllCountry();
        }

        protected void countryEntrySaveButton_Click(object sender, EventArgs e)
        {
            CountryManager countryManager = new CountryManager();
            Country country = new Country();
            country.Name = countryEntryNameTextBox.Text;
            country.About = Request.Form["countryEntryAbout"];
            //showCountry.InnerHtml = country.About;
            Label1.Text = countryManager.save(country);

            //article.Description = Request.Form["edit"];
            //showArticle.InnerHtml = article.Description;
            //manager.Save(article);
        }

        public void LoadAllCountry()
        {
            countryEntryGridView.DataSource = CountryManager.LoadAllCountry();
            countryEntryGridView.DataBind();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            countryEntryGridView.PageIndex = e.NewPageIndex;
        }
    }
}