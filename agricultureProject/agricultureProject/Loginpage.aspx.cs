using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace agricultureProject
{
    public partial class Loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLoginId.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                BLL obj = new BLL();

                DataTable tabUser = new DataTable();
                tabUser = obj.CheckUserLogin(txtLoginId.Text, txtPassword.Text);

                if (tabUser.Rows.Count > 0)
                {
                    if (dropdownlistType.SelectedIndex == 1 && tabUser.Rows[0]["UserType"].ToString().Equals("Admin"))
                    {
                        Session["AdminId"] = txtLoginId.Text;
                        Response.Redirect("~/Admin/AdminHome.aspx");
                    }
                    else if (dropdownlistType.SelectedIndex == 2 && tabUser.Rows[0]["UserType"].ToString().Equals("Staff"))
                    {
                        Session["StaffId"] = txtLoginId.Text;
                        Response.Redirect("~/AgriDept/DeptHome.aspx");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "key", "<script>alert('Invalid UserId/Password!!!')</script>");
                }
            }
            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "key", "<script>alert('Server Error - Check the Database Connectivity!!!')</script>");
            }
        }
    }
}