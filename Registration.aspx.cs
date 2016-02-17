using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitReviewer();
    }

    protected void SubmitReviewer()
    {
        ServiceReference.LoginServiceClient rlc = new ServiceReference.LoginServiceClient();

        ServiceReference.VenueLite vLite = new ServiceReference.VenueLite();

        vLite.Name = NameTextBox.Text;
        vLite.Address = AddressTextBox.Text;
        vLite.City = CityTextBox.Text;
        vLite.State = StateTextBox.Text;
        vLite.ZipCode = ZipTextBox.Text;
        vLite.Phone = PhoneTextBox.Text;
        vLite.Email = EmailTextBox.Text;
        vLite.WebPage = WebPageTextBox.Text;
        vLite.AgeRestriction = int.Parse(AgeTextBox.Text);
        vLite.UserName = UserNameTextBox.Text;
        vLite.Password = PasswordTextBox.Text;

        int result = rlc.VenueRegistration(vLite);

        if (result != -1)
            ResultLabel.Text = "Registration Complete";

        else
            ResultLabel.Text = "Registration Error";
    }
}