using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OnlineMarket
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindProductRepeater();
        }

        private void BindProductRepeater()
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;

            using(SqlConnection con = new SqlConnection(CS))
            {
                using(SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrProduts.DataSource = dtBrands;
                        rptrProduts.DataBind();                        
                    }
                }
            }
        }
    }
}