using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentManagementSystem_sms.Student
{
    public partial class StudentLoginForm : System.Web.UI.Page
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
                 ValidateStudent();
               
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
        private void ValidateStudent()
        {
            //Checking Regno and Password from tblStudents
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("spStudentLoginTblStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", txtRegNo.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    //lblMessage.Text = "Login success";
                    Session["Regno"] = txtRegNo.Text;
                    Session["Name"] = dr["Name"].ToString();
                    Session["Course"] = dr["Course"].ToString();
                    Response.Redirect("StudentMainForm.aspx");
                   // lblMessage.Text = "Login Successfull";
                }
                else
                {
                    lblMessage.Text = "Invalid UserID or Password";
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
    }
}