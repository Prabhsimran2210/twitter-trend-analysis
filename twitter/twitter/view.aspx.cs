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
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
            con.Open();
            String f1 = Session["q1"].ToString();
            String f2 = Session["q2"].ToString();

            SqlCommand cmd = new SqlCommand("select * from regis where uname='" + f1 + "'and pass='" + f2 + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                Label2.Text = dr[0].ToString();
                Image1.ImageUrl = dr[2].ToString();
                Label3.Text = dr[1].ToString();
                Label4.Text = dr[6].ToString();
                Label7.Text = dr[4].ToString();

          

            }
            con.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("searcht.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");

        }
    }
}