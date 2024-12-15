using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentManagementSystem_sms.Student
{
    public partial class StudentChangePasswordForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //lblMessage.Text = "Password Changed Successfully";
            ChangePassword();
        }

        private void ChangePassword()
        {
            // to display due amount from tblStudents table
            try
            {
                cn.Open();
                if (Session["Regno"] != null)
                {
                    SqlCommand cmd = new SqlCommand("update tblStudents set Password=@Password where Regno=" + Session["Regno"].ToString(), cn);
                    cmd.Parameters.AddWithValue("@Password", txtNewPassword.Text);
                    cmd.Parameters.AddWithValue("@Regno", Session["Regno"].ToString());
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Password changed successfully...";
                }
                else
                {
                    lblMessage.Text = "Regno no not found!!!";
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