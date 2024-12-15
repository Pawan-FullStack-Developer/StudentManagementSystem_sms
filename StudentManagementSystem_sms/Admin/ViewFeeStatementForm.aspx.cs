using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentManagementSystem_sms.Admin
{

    public partial class ViewFeeStatementForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
        }

        protected void btnShowStatement_Click(object sender, EventArgs e)
        {
            try
            {
                
                // lblMessage.Text = "Connected";
                ShowFeeStatement();
               
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;
            }

        }
        private void ShowFeeStatement()
        {
            //To Display Fee Statement from tblFeeTransaction table
            try
            {
                
                cn.Open();
                //lblMessage.Text = "Connected";
                string regno = txtRegNo.Text;
                SqlCommand cmd = new SqlCommand("spShowFeeStatement", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", regno);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                
                cn.Close();
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            txtRegNo.Text = null;
            GridView1.DataBind();
        }
    }
}