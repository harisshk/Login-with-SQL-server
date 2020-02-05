using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class UserRepositry
    {
        public static int checkLogin(string username, string password)
        {
            SqlConnection cnc = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            cnc.Open();
            SqlCommand command = new SqlCommand("UserCheck", cnc);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@UserName", username);
            command.Parameters.AddWithValue("@Password", password);
            int result = (Int32)command.ExecuteScalar();
            cnc.Close();
            return result;
        }
    }
}