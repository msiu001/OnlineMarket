using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace OnlineMarket
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Response.Cookies["UNAME"] != null && Response.Cookies["PASS"] != null)
                {
                    UsernameID.Text = Request.Cookies["UNAME"].Value;
                    PasswordID.Attributes["value"] = Request.Cookies["PASS"].Value;
                    checkBoxRememberUNandPASS.Checked = true;
                }
            }
        }

        protected void btLoginID_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Username='" + UsernameID.Text + "' and Password='" + PasswordID.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count != 0)
                {
                    if (checkBoxRememberUNandPASS.Checked)
                    {
                        Response.Cookies["UNAME"].Value = UsernameID.Text;
                        Response.Cookies["PASS"].Value = PasswordID.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PASS"].Expires = DateTime.Now.AddDays(15);
                    }                   
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PASS"].Expires = DateTime.Now.AddDays(-1);
                    }

                    Session["USERNAMEID"] = UsernameID.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                else
                {
                    lblErrorSignIn.Text = "Invalid Username or Password!";
                }
            }
        }
    }
}