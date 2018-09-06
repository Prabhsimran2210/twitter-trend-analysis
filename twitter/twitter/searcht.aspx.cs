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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete  from tweet", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Chart1.Visible = false;
            Chart2.Visible = false;
           Chart3.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
           Label5.Visible = false;
          
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

           
               String s1  = TextBox1.Text;



                Class1 v = new Class1();
                v.tweet(s1);

                SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from tweet", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
                Chart1.Visible = true;
                Chart2.Visible = true;
                Chart3.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                GridView1.Visible = true;
            

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("givefeed.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("view.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            Chart1.Visible = false;
            Chart2.Visible = false;
            Chart3.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;

            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete  from tweet", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.Visible = false;
            TextBox1.Text = " ";
        }
    }
}