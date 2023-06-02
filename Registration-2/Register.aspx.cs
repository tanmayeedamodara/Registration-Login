using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Registration_2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = "Click to register";
                Label1.ForeColor = System.Drawing.Color.Gray;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                RegisterUser();
                Label1.Text = "Registered successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                FieldEmpty();
            }
            else
            {
                Label1.Text = "Not registered";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
        
        protected void ServerValidate(object source, ServerValidateEventArgs args)
        {
            string email = TextBox3.Text;
            bool emailExists = CheckMailExists(email);
            args.IsValid = !emailExists;
            
        }
        protected bool CheckMailExists(string email)
        {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-PDSRGB2; Initial Catalog=DbTrial1; Integrated Security=True"))
            {
                string query = "Select count(*) from Table_reg where Email=@Email";
                using(SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }
        protected void RegisterUser()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-PDSRGB2; Initial Catalog=DbTrial1; Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Table_reg" + "(Fname, Lname, Email, Gender, Address, Phone, Password) " +
                "values(@Fname, @Lname, @Email, @Gender, @Address, @Phone, @Password)", con);
            cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void FieldEmpty()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedIndex = 0;
        }
    }
}