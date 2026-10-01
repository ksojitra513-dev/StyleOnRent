
using System;

namespace StyleOnRent
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Page.Validate("Login");

            if (Page.IsValid)
            {
                lblMessage.Text = "Form validation successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}