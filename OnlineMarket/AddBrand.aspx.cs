using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineMarket
{
    public partial class AddBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandsRptr();
        }

        private void BindBrandsRptr()
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblBrands", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrBrands.DataSource = dtBrands;
                        rptrBrands.DataBind();
                    } 
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblBrands (Name) values ('" + txtBrandName.Text +  "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtBrandName.Text = string.Empty;
            }
            BindBrandsRptr();
        }
    }
}