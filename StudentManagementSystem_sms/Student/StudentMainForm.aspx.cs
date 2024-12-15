using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem_sms.Student
{
    public partial class StudentMainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lblStudentName.Text = "Welcome " + Session["Name"].ToString();
            }
        }
    }
}