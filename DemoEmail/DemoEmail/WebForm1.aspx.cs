using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoEmail
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        MailMessage Msg = new MailMessage();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sendEmail_Click(object sender, EventArgs e)
        {
            Random rand = new Random();
            
                




            Msg.From = new MailAddress(txt_gUserName.Text);
            Msg.To.Add(txt_to.Text); //Receiver
            //Msg.CC.Add(txt_cc.Text);
            //Msg.Bcc.Add(txt_bcc.Text);

            Msg.Subject = txt_subject.Text;

            Msg.Body = rand.Next(999999).ToString();

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential(txt_gUserName.Text,txt_gPassword.Text);
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null; 
            lblMessage.Text = "Email Has Been Succesfully Sent !";

        }
    }
}



