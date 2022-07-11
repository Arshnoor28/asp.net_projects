using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginControls_project
{
    public partial class homePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("./newUser.aspx");
            }
        }

        protected void linkBtn_changePassword_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {
            Panel1.Visible=false;   
        }
    }
}