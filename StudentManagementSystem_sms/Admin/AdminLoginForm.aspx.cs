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
    public partial class AdminLoginForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Open();
                //   lblMessage.Text = "Connected To sql Server";
                SqlCommand cmd = new SqlCommand("spLoginTblAdmin", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", txtUserId.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Response.Redirect("AdminMainForm.aspx");
                }
                cn.Close();
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
    }
}