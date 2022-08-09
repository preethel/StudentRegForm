using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentRegForm
{
    public partial class StudentUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void saveButton_Click(object sender, EventArgs e)
        {
            //Connection String
            string connString = "Data Source=(localdb)\\mssqllocaldb; Initial Catalog=Test; Integrated Security=SSPI;";
            //Sql Connection
            SqlConnection sqlConnection = new SqlConnection(connString);
            //Query
            string query = "INSERT INTO t_Student(name,regNo) VALUES(@name, @regNo)";
            //Sql Command
            SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@name", nameTextBox.Text.Trim());
            sqlCommand.Parameters.AddWithValue("@regNo", regTextBox.Text.Trim());


            //Connection open
            sqlConnection.Open();
            //Command Execute
            int rowsEffected = sqlCommand.ExecuteNonQuery();
            if (rowsEffected > 0)
            {
                messageLabel.Text = "Student Information Saved Successfully";
            }
            //Connection Close
            sqlConnection.Close();
        }
    }
}
