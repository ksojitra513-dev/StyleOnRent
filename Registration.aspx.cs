
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StyleOnRent
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Validate Terms and Conditions
        protected void cvTerms_ServerValidate(
            object source,
            ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        // Join Now button
        protected void btnJoin_Click(object sender, EventArgs e)
        {
            Page.Validate("Register");

            if (Page.IsValid)
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();

                // Store user details temporarily
                Session["RegistrationName"] = name;
                Session["RegistrationEmail"] = email;

                // Redirect to OTP verification page
                Response.Redirect("VerifyIdentity.aspx");
            }
            else
            {
                lblMessage.ForeColor =
                    System.Drawing.Color.Red;

                lblMessage.Text =
                    "Please correct the errors above.";
            }
        }
    }
}