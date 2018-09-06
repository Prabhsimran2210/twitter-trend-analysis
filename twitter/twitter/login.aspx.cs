using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;


namespace twitter
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
            con.Open();
            String s1 = (TextBox1.Text).ToString();
            String s2 = (TextBox2.Text).ToString();
            Session["q1"] = s1;
            Session["q2"] = s2;
            SqlCommand cmd = new SqlCommand("select * from regis where uname='" + s1 + "'and pass='" + s2 + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("view.aspx");
            }
            else
            {
                Label6.Text = "invalid login";
            }
        }
    }
}