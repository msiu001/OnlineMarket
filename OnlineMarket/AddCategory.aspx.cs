using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineMarket
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryRptr();
        }

        private void BindCategoryRptr()
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblCategories", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtCategories = new DataTable();
                        sda.Fill(dtCategories);
                        rptrCategory.DataSource = dtCategories;
                        rptrCategory.DataBind();
                    }
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["myConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into tblCategories (CatName) values ('" + txtCatName.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtCatName.Text = string.Empty;
            }
            BindCategoryRptr();
        }
    }
}