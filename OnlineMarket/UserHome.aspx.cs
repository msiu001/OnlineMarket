using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMarket
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USERNAMEID"] != null)
            {
                lblSuccessSignIn.Text = "Login Successfully, Welcome " + Session["USERNAMEID"].ToString()+ "";
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["USERNAMEID"] = null;
            Response.Redirect("~/Index.aspx");
        }
    }
}