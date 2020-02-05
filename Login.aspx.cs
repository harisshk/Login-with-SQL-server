using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string username = textUserName.Text.Trim();
            string password = textPassword.Text.Trim();


            if (UserRepositry.checkLogin(username, password) == 1)
            {
                Session["Username"] = username;
                Response.Redirect("Home.aspx");
            }
            else
            {
                labelErrorMessage.Text = "Invalid Username or Password";
            }
        }
    }
}
