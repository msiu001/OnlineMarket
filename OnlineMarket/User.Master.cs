using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMarket
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAMEID"] != null)
            {
                
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