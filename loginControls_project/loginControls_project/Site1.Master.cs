using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginControls_project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkBtn_newUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/newUser.aspx");
        }

        protected void linkBtn_signIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signIn.aspx");
        }

        protected void linkBtn_forgetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/forgetPassword.aspx");
        }
    }
}