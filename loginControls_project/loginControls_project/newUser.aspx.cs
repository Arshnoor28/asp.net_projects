using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginControls_project
{
    public partial class newUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
          
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            Session["Username"] = CreateUserWizard1.UserName.ToString();
        }
    }
}