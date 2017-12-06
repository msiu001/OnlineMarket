using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace OnlineMarket
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            if(tbUsername.Text != "" && tbPassword.Text != "" && tbConfirmPassword.Text != "" && tbEmail.Text != "" && tbName.Text != "")
            {
                if(tbPassword.Text == tbConfirmPassword.Text)
                {
                    String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Users (Username, Password, Email, Name) values ('" + tbUsername.Text + "','" + tbPassword.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Clear();
                        lblErrorMessage.Text = "";
                        lblSuccessMessage.Text = "Saved Successfully";
                        Response.Redirect("~/SignIn.aspx");                    
                    }
                }
                else
                {
                    lblErrorMessage.Text = "Passwords do not match!";
                }                
            }
            else
            {
                lblErrorMessage.Text = "Please fill all Fields!";
            }
           
        }
      
        public void Clear()
        {
            tbUsername.Text = "";
            tbPassword.Text = "";
            tbConfirmPassword.Text = "";
            tbName.Text = "";
            tbEmail.Text = "";
        }
    }
}