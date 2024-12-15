using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentManagementSystem_sms
{
    public partial class AddStudentForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPassword.Text = String.Empty;
            try
            {
                dropDownCourse.AutoPostBack = true;

                if (!IsPostBack)
                {

                    LoadCourses();
                }
            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);
            }
     
        }
        private void LoadCourses()
        {
            //Loading courses into dropdown from tblCourse table
            try
            {
                cn.Open();
                //Response.Write("Connected....!!!!");
                string query = "Select * from tblCourses";
                SqlCommand cmd = new SqlCommand(query, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    dropDownCourse.Items.Add(dr["CourseName"].ToString());
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                   StudentRegistration();
            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);
            }
        }
        private int GetStudentRegNo()
        {
            //to read last inserted Regno from tblStudents
            int currRegno = 0;
            try
            {
                cn.Open();
                // Response.Write("Connected..!!");
                string query = "select max(regno) from tblStudents";
                SqlCommand cmd = new SqlCommand(query, cn);
                currRegno = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Write(currRegno);
                cn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            return currRegno;
        }
        private void StudentRegistration ()
        {
            //Adding New Record into tblStudents
            try
            {
                cn.Open();
                //Response.Write("Connected....!!!!");
                string query = "Select * from tblCourses";
                SqlCommand cmd = new SqlCommand("spInsertTblStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", txtName.Text);
                cmd.Parameters.Add("@Password", txtPassword.Text);
                string gender;
                if (radioMale.Checked == true)
                    gender = "Male";
                else if (radioFemale.Checked == true)
                {
                    gender = "Female";
                }
                else
                {
                    gender = "null";
                }
                if(gender!=null)
                cmd.Parameters.Add("@Gender", gender);

                cmd.Parameters.Add("@Course", dropDownCourse.SelectedItem.ToString());
                cmd.Parameters.Add("@FinalFee", txtFinalFees.Text);
                cmd.Parameters.Add("@FeePaid", txtFeePaid.Text);
                cmd.Parameters.Add("@PaymentMode", dropDownPaymentMode.SelectedItem.ToString());
                cmd.Parameters.Add("@MobileNo", txtMobileNo.Text);
                cmd.Parameters.Add("@EmailId", txtEmailId.Text);
                cmd.Parameters.Add("@Address", txtAddress.Text);
                cmd.Parameters.Add("@PinCode", txtPincode.Text);
                cmd.Parameters.Add("@Graduation", dropDownGraduation.SelectedItem.ToString());
                cmd.Parameters.Add("@Branch", txtBranch.Text);
                cmd.Parameters.Add("@YOP", txtYOP.Text);
                cmd.Parameters.Add("@Percentage", txtPercentage.Text);

                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    cn.Close();
                    int regno = GetStudentRegNo();
                   // lblMessage.Text = "Registration Success. Your Regno is " + regno;

                    //Passing regno and inserting record in to tblFeeTransactiontable
                    AddTransaction(regno);
                }
                else
                    lblMessage.Text = "Registration not done";
               // cn.Close();
            }
            catch (SqlException ex)
            {

                lblMessage.Text= ex.Message;

            }
        }
        private void AddTransaction(int regno)
        {
            try
            {
                cn.Open();
                //Response.Write("Connected....!!!!");
                string query = "Select * from tblCourses";
                SqlCommand cmd = new SqlCommand("spInsertTblTransactions", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Regno", regno);
                cmd.Parameters.Add("@Amount", txtFeePaid.Text);
                cmd.Parameters.Add("@PaymentMode", dropDownPaymentMode.SelectedItem.ToString());
              


                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    cn.Close();
                  //  int regno = GetStudentRegNo();
                     lblMessage.Text = "Registration Success. Your Regno is " + regno;

                }
                else
                    lblMessage.Text = "Registration not done";
                // cn.Close();
            }
            catch (SqlException ex)
            {

                lblMessage.Text = ex.Message;

            }
        }
    
     

        protected void dropDownCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Display Course Fee on level1
            try
            {
               DisplayCourseFee();
            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);
            }
        }
        private void DisplayCourseFee()
        {
            //display course fee based on the course name from dropdown list
            try
            {
                cn.Open();
                //Response.Write("Connected....!!!!");
                string query = "Select fee from tblCourses where CourseName='" + dropDownCourse.SelectedValue+"'";
                SqlCommand cmd = new SqlCommand(query, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblShowCourseFees.Text = dr["fee"].ToString();
                }
                else
                {
                    lblShowCourseFees.Text = "Course Not Found...!!!";
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {

                Response.Write(ex.Message);

            }
        }
    }
}