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
    public partial class ViewPaymentsStatementForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsConn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            // to display due amount of a student
            try
            {
                string regno;
                if (Session["Regno"] != null && Session["Name"] != null)
                {
                    regno = Session["Regno"].ToString();
                    lblName.Text = "Student Name:" + Session["Name"].ToString();
                }
                ShowStatement();
            }
            catch (Exception ex)
            {
                lblName.Text = ex.Message;
            }
        }

        private void ShowStatement()
        {
            // to display due amount from tblStudents table
            // to display due amount from tblStudents table
            try
            {
                cn.Open();
                if (Session["Regno"] != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from tblFeeTransactions where Regno=" + Session["Regno"].ToString(), cn);
                    if (Session["Name"] != null && Session["Course"] != null)
                        lblName.Text = "Student Name :" + Session["Name"].ToString() + "</br> Course :" + Session["Course"].ToString();

                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                    dr.Close();
                }
                else
                {
                    lblName.Text = "Regno no not found!!!";
                }

                cn.Close();
            }
            catch (Exception ex)
            {
                lblName.Text = ex.Message;
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}