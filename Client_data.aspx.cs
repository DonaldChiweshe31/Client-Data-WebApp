using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WarpClientForm
{
    public partial class Client_data : System.Web.UI.Page
    {
        string connnectionstring = @"Data Source=LAPTOP-TGDQ1BQ6\SQLEXPRESS;Initial Catalog=Clients;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                Clear();
                if (!String.IsNullOrEmpty(Request.QueryString["Id"])) 
                {

                    int Id = Convert.ToInt32(Request.QueryString["Id"]);
                    using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
                    {
                        sqlCon.Open();

                        SqlDataAdapter sqlDa = new SqlDataAdapter("ViewByID", sqlCon);
                        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlDa.SelectCommand.Parameters.AddWithValue("@Id", Id);
                        DataTable dtbl = new DataTable();
                        sqlDa.Fill(dtbl);

                        hfUserID.Value = Id.ToString();
                        txtBoxName.Text = dtbl.Rows[0][1].ToString();
                       txtBoxSurname.Text = dtbl.Rows[0][2].ToString();
                        txtBoxEmail.Text = dtbl.Rows[0][3].ToString();
                        txtBoxPassword.Text = dtbl.Rows[0][4].ToString();
                        DropdownCountries.Items.FindByValue (dtbl.Rows[0][5].ToString()).Selected = true;
                        rdbColours.Items.FindByValue(dtbl.Rows[0][6].ToString()).Selected = true;
                  
                    }

                }
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {

            using (SqlConnection sqlCon = new SqlConnection(connnectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("AddOrEdit", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                sqlCmd.Parameters.AddWithValue("@Name", txtBoxName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Surname", txtBoxSurname.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", txtBoxEmail.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", txtBoxPassword.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Country", DropdownCountries.SelectedItem.Value);
                sqlCmd.Parameters.AddWithValue("@Fav", rdbColours.SelectedItem.Value);
                sqlCmd.Parameters.AddWithValue("@Birthday", txtBoxDate.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@CellPhoneNumber", txtBoxCellNumber.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Comments", txtBoxComment.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                lblSuccessMessage.Text = "Submitted Successfully";
            }
        }

       void Clear()
        {
            txtBoxName.Text = txtBoxSurname.Text = txtBoxEmail.Text = txtBoxPassword.Text = txtboxCoPassword.Text = "";
            hfUserID.Value = "";
        }

    }
}