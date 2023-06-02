using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_2
{
    public partial class IndividualDeets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Fname2 = Session["Fname2"].ToString();
                string Lname2 = Session["Lname2"].ToString();
                string Email1 = Request.QueryString["Email"];
                //string Email2 = Session["Email2"].ToString();
                string Gender2 = Session["Gender2"].ToString();
                string Address2 = Session["Address2"].ToString();
                string Phone2 = Session["Phone2"].ToString();

                Label1.Text = Fname2;
                Label2.Text = Lname2;
                //Label3.Text = Email2;
                lblEmail.Text = Email1;
                Label4.Text = Gender2;
                Label5.Text = Address2;
                Label6.Text = Phone2;
            }
        }
    }
}