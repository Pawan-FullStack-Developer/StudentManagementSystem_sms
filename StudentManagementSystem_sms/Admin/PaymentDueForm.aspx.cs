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
    public partial class PaymentDueForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = string.Empty;
            lblCourse.Text= string.Empty;
            lblMobile.Text= string.Empty;
            lblFinalFeeAmount.Text= string.Empty;
            lblFeePaid.Text= string.Empty;
            lblDueAmount.Text= string.Empty;
            lblStudentResult.Text= string.Empty;
            lblMessage.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //updating fee in tblStudent table and adding new record 
            //tblFeeTransactions table
            try
            {
                UpdateStudentFee();
            }
            catch (Exception ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
        private void UpdateStudentFee()
        {

            //updating fee in tblStudent table and adding new record 
            // tblFeeTransactions table
            try
            {
                cn.Open();
                //lblMessage.Text = "Connected";
                string regno = txtRegNo.Text;
                SqlCommand cmd = new SqlCommand("spUpdateFeeDetails", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", regno);
                cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
                cmd.Parameters.AddWithValue("@PaymentMode",dropDownPaymentMode.SelectedItem.ToString());
                int result = cmd.ExecuteNonQuery();
                if (result != 0)
                {
                    lblMessage.Text = "Fee Updated Successfully";
                }
                else
                {
                    lblStudentResult.Text = "Regno not Found..!!!";
                }
                cn.Close();
            }
            catch (SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
           
    

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Open();
                // lblMessage.Text = "Connected";
                string regno = txtRegNo.Text;
                SqlCommand cmd = new SqlCommand("spGetStudentFeeTblStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", regno);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblName.Text = "Name :" + dr["Name"].ToString();
                    lblCourse.Text = "Course:" + dr["Course"].ToString();
                    lblMobile.Text = "Mobile No:" + dr["MobileNo"].ToString();
                    lblFinalFeeAmount.Text = "Total Fee:" + dr["FinalFee"].ToString();
                    lblFeePaid.Text = "Paid Fee :" + dr["FeePaid"].ToString();
                    double totalFee, paidFee, dueAmt;
                    totalFee = Convert.ToDouble(dr["FinalFee"]);
                    paidFee = Convert.ToDouble(dr["FeePaid"]);
                    dueAmt = totalFee - paidFee;
                    lblDueAmount.Text = "Due Amount :" + dueAmt;
                }
                else
                {
                    lblStudentResult.Text = "RegNo Not Found......!!!";
                }

                cn.Close();
            }
            catch (SqlException ex)
            {

                lblStudentResult.Text = ex.Message;
            }
        }
    }
}