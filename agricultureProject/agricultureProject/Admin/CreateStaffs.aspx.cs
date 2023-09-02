using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace agricultureProject.Admin
{
    public partial class CreateStaffs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Session.Abandon();
                Response.Redirect("~/Loginpage.aspx");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    txtLoginId.Focus();

                    if (Request.QueryString["staffId"] == null)
                    {

                    }
                    else
                    {
                        loadStaff();
                    }
                }
            }
        }

        //function to load staff details
        private void loadStaff()
        {
            BLL obj = new BLL();
            DataTable tab = new DataTable();
            tab = obj.GetUserById(Request.QueryString["staffId"]);

            Session["staffId"] = null;
            Session["staffId"] = Request.QueryString["staffId"];

            if (tab.Rows.Count > 0)
            {
                txtLoginId.Text = tab.Rows[0]["UserId"].ToString();
                txtPassword.Text = tab.Rows[0]["Password"].ToString();

                txtLoc.Text = tab.Rows[0]["Location"].ToString();               
            }
            
            btnSubmit.Text = "Update";
        }


       
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BLL obj = new BLL();

            if (btnSubmit.Text.Equals("Submit"))
            {
                try
                {
                    if (obj.CheckUserId(txtLoginId.Text))
                    {
                        obj.InsertUser(txtLoginId.Text, txtPassword.Text, "Staff", txtLoc.Text);

                        //Emails.MailSender.SendEmail(" ", " ", txtEmailId.Value, "Credentials", "User Id=" + txtUserId.Value + "and Pwd=" + txtPassword.Value, " ");

                        ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('New Staff Added Successfully')</script>");
                        txtLoc.Text = string.Empty;
                        txtPassword.Text = string.Empty;
                        txtLoginId.Text = string.Empty;

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('UserId Exists!!!')</script>");
                    }
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('Server Error!')</script>");
                }
            }
            else if (btnSubmit.Text.Equals("Update"))
            {
                if (txtLoginId.Text.Equals(Session["staffId"].ToString()))
                {
                    try
                    {
                        obj.UpdateUser(txtLoginId.Text, txtPassword.Text, "Staff", txtLoc.Text, Session["staffId"].ToString());

                        //Emails.MailSender.SendEmail(" ", " ", txtEmailId.Value, "Credentials", "User Id=" + txtUserId.Value + "and Pwd=" + txtPassword.Value, " ");

                        ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('User Updated Successfully')</script>");
                        txtLoc.Text = string.Empty;
                        txtPassword.Text = string.Empty;
                        txtLoginId.Text = string.Empty;

                        btnSubmit.Text = "Submit";

                    }
                    catch
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('Server Error!')</script>");
                    }
                }
                else
                {
                    if (obj.CheckUserId(txtLoginId.Text))
                    {
                        try
                        {
                            obj.UpdateUser(txtLoginId.Text, txtPassword.Text, "Staff", txtLoc.Text, Session["staffId"].ToString());

                            //Emails.MailSender.SendEmail(" ", " ", txtEmailId.Value, "Credentials", "User Id=" + txtUserId.Value + "and Pwd=" + txtPassword.Value, " ");

                            ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('User Updated Successfully')</script>");
                            txtLoc.Text = string.Empty;
                            txtPassword.Text = string.Empty;
                            txtLoginId.Text = string.Empty;

                            btnSubmit.Text = "Submit";

                        }
                        catch
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('Server Error!')</script>");
                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Key", "<Script>alert('UserId Exists')</script>");
                    }
                }
            }
        }

    }
}