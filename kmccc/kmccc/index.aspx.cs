using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        captcha1.ValidateCaptcha(captcha_code.Text.Trim());
        if (captcha1.UserValidated)
        {
            string s = this.TextBox1.Text;
            Response.Redirect("Detailsbyproperty.aspx?property_id=" + s);
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Visible = true;
            Label3.Text = "Your Captcha Text Verification is UnSuccessfully. You Have Entered Invalid Captcha";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        captcha2.ValidateCaptcha(captcha_code2.Text.Trim());
        if (captcha2.UserValidated)
        {
    
            string zone = this.zone.Text;
            string ward_number = this.ward_number.Text;
            string chak_number = this.chak_number.Text;
            string name = this.name.Text;
            string address = this.address.Text;
            if (chak_number=="") 
            {
                string chk="Select";
                Response.Redirect("details.aspx?zone="+zone+"&ward_number="+ward_number+"&chak_number="+chk+"&name="+name+"&address="+address);
            }
            else
            {
                Response.Redirect("details.aspx?zone="+zone+"&ward_number="+ward_number+"&chak_number="+chak_number+"&name="+name+"&address="+address);
            }
        }
        else
        {
            Label5.ForeColor = System.Drawing.Color.Red;
            Label5.Visible = true;
            Label5.Text = "Your Captcha Text Verification is UnSuccessfully. You Have Entered Invalid Captcha";
        }


    }
}