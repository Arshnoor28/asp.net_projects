using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginControls_project
{
    public partial class signIn : System.Web.UI.Page
    {
       
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Session["Username"] = Login1.UserName.ToString();
            HttpCookie userInfo = new HttpCookie("username", "password");
            userInfo["username"] = Login1.UserName.ToString();
            userInfo["password"] = Login1.Password.ToString();
            userInfo.Expires = DateTime.Now.AddMinutes(20);
            Response.Cookies.Add(userInfo);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
    }
}