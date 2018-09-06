using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using VaderSharp;

namespace twitter
{
    public partial class givefeed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String f1 = Session["q1"].ToString();
            TextBox2.Text = f1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");
            String a = " ";
            if (RadioButton1.Checked)
            {
                a = "extremely well";
            }
            if (RadioButton2.Checked)
            {
                a = "very well ";
            }
            if (RadioButton3.Checked)
            {
                a = "somewhat well";
            }
            if (RadioButton4.Checked)
            {
                a = "not so well";
            }
            if (RadioButton5.Checked)
            {
                a = "not at all well";
            }

            String b = " ";
            if (RadioButton6.Checked)
            {
                b = "extremely easy";
            }
            if (RadioButton7.Checked)
            {
                b = "very easy ";
            }
            if (RadioButton8.Checked)
            {
                b = "somewhat easy";
            }
            if (RadioButton9.Checked)
            {
                b = "not so easy";
            }
            if (RadioButton10.Checked)
            {
                b = "not at all easy";
            }

            String c = " ";
            if (RadioButton11.Checked)
            {
                c = "a lot less time";
            }
            if (RadioButton12.Checked)
            {
                c = "a little less time ";
            }
            if (RadioButton13.Checked)
            {
                c = "about what I expected";
            }
            if (RadioButton14.Checked)
            {
                c = "a little more time";
            }
            if (RadioButton15.Checked)
            {
                c = "a lot more time";
            }

            String d = " ";
            if (RadioButton16.Checked)
            {
                d = "extremely appealing";
            }
            if (RadioButton17.Checked)
            {
                d = "very appealing ";
            }
            if (RadioButton18.Checked)
            {
                d = "somewhat appealing";
            }
            if (RadioButton19.Checked)
            {
                d = "not so appealing";
            }
            if (RadioButton20.Checked)
            {
                d = "not at all appealing";
            }

            String t = " ";
            if (RadioButton21.Checked)
            {
                t = "extremely easy";
            }
            if (RadioButton22.Checked)
            {
                t = "very easy ";
            }
            if (RadioButton23.Checked)
            {
                t = "somewhat easy";
            }
            if (RadioButton24.Checked)
            {
                t = "not so easy";
            }
            if (RadioButton25.Checked)
            {
                t = "not at all easy";
            }

            String s1 = TextBox1.Text;

            String s2 = String.Join(",", a, b, c, d, t, s1);
            SentimentIntensityAnalyzer analyzer = new SentimentIntensityAnalyzer();
            var results = analyzer.PolarityScores(s2);

            double d1 = results.Positive;

            double d2 = results.Negative;
            double d3 = results.Neutral;

            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into feed values('" + TextBox2.Text + "','" + s2 + "','" + d1 + "','" + d2 + "','" + d3 + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label5.Text = "submitted successfully";
            TextBox1.Text = " ";
            TextBox2.Text = " ";
       
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("searcht.aspx");
        }
    }
}