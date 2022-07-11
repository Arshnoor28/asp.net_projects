using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoMultiViews
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex - 1;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            lbl_resultName.Text = txt_studentName.Text;
            int total_marks = 0;
            float percentage;
            int iMath,iEng,iOpt,iPhy,iChem,eMath,eEng,eOpt,ePhy,eChem;
            iMath = int.Parse(txt_intMath.Text);
            iEng = int.Parse(txt_intEng.Text);
            iOpt = int.Parse(txt_intOpt.Text);
            iPhy = int.Parse(txt_intPhy.Text);
            iChem = int.Parse(txt_intChem.Text);

            eMath = int.Parse(txt_extMath.Text);
            eEng = int.Parse(txt_extEng.Text);
            eOpt = int.Parse(txt_extOpt.Text);
            ePhy = int.Parse(txt_extPhy.Text);
            eChem = int.Parse(txt_extChem.Text);

            total_marks=iMath+iEng+iOpt+iPhy+iChem+eMath+eChem+eEng+ePhy+eOpt;
            percentage = total_marks / 5F;
            txt_totalMarks.Text= total_marks.ToString();
            txt_percentage.Text= percentage.ToString();

            lbl_percentage.Text= percentage.ToString();
            lbl_mName.Text= txtmotherName.Text;
            lbl_fName.Text = txt_fatherName.Text;
            lbl_contact.Text= txt_contact.Text;
            lbl_StuName.Text=txt_studentName.Text;
            lbl_Gender.Text=list_gender.Text;
        }
    }
}