using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Registration_2
{
    public class UserDAL
    {
        private string conString;
        public UserDAL()
        {
            conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        public User GetUsers(string EmailID)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("GetUserData", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", EmailID);

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            User user = new User();
                            user.Email = EmailID;
                            user.Fname = reader["Fname"].ToString();
                            user.Lname = reader["Lname"].ToString();
                            user.Gender = reader["Gender"].ToString();
                            user.Address = reader["Address"].ToString();
                            user.Phone = reader["Phone"].ToString();

                            return user;
                        }
                        else
                        {
                            return null;
                        }
                    }
                }
                catch(Exception ec)
                {
                    return null;
                }
            }
        }
    }
}