using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace DemoFileHandling
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;

        public void myConnection()
        {
            try
            {
                con = new MySqlConnection(" Data Source= localhost; Database = fileHandling; User ID = root; Password = Arsh#2806");
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * get the name of directories in specified drive
             */
            //GridView1.DataSource = Directory.GetDirectories("e:\\");
            //GridView1.DataBind();
            /*
             * get the name of files in specified folder
             */
            //GridView1.DataSource = Directory.GetFiles("c:\\windows\\");
            //GridView1.DataBind();
            /*
             * create a folder in the current project file
             */
            //string dirName =MapPath("DemoFileHandling")+"//"+txt_dirName.Text;
            //if (!Directory.Exists(dirName))
            //    Directory.CreateDirectory(dirName);

            /*
             * write text in file and read it
             */
            using (StreamWriter w = new StreamWriter(MapPath("DemoFileHandling" + "//arsh.txt")))
            {
                w.WriteLine(txt_enterText.Text);
            }

            string readText = File.ReadAllText(MapPath("DemoFileHandling" + "//arsh.txt"));
            txt_readText.Text = readText;

            /*
             * writing content in database
             */
            try
            {
                myConnection();
                cmd = new MySqlCommand("Insert into file_content values(@fileName,@content)",con);
                cmd.Parameters.AddWithValue("@fileName", MapPath("DemoFileHandling" + "//arsh.txt"));
                cmd.Parameters.AddWithValue("@content",txt_enterText.Text);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}