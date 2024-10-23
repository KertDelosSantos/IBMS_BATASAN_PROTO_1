using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IBMS_BATASAN_PROTO_1.LOGIN
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            string username = txtUsername.Text;
            string password = txtPassword.Text;
        
            if (username == "admin" && password == "12345") 
            {
                Response.Redirect("~/DASHBOARD/AdminDashboard.aspx");
            }
            else
            {
               
            }
        }
    }
}