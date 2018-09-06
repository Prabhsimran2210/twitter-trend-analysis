using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace twitter
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Text = " ";
        }
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string s2 =" ";
            if (FileUpload1.HasFile)
            {
                string s = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~\\NewFolder1\\" + s));
                 s2 = "~\\NewFolder1\\" + s;
            }
            else
            {
                s2 = "~\\NewFolder1\\download.jpg";
            }
            String g = " ";
            if (RadioButton1.Checked)
            {
                g = "Male";
            }
            if (RadioButton2.Checked)
            {
                g = "Female";
            }
            SqlCommand cmd = new SqlCommand("Insert into regis values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + s2 + "',' " + g + " ','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label11.Text = "submitted successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
           
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";

            RadioButton1.Checked = false;
            RadioButton2.Checked = false;

            Response.Redirect("login.aspx");
        }

       
    }
}