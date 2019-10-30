using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trips : System.Web.UI.Page
{
    string conn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bus"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string busID = GridView1.SelectedRow.Cells[0].Text;
        string time = GridView1.SelectedRow.Cells[1].Text;
        string seats = GridView1.SelectedRow.Cells[2].Text;
        Label8.Text = busID + seats;
        int s1, s2;
        int.TryParse(seats, out s2);

        using (SqlConnection con = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Select Seats from Buses where BusID = @BusID";
                cmd.Parameters.AddWithValue("@BusID", busID);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                s1 = (int)reader["Seats"];
            }
        }

        Label8.Text += s1.ToString();

        using (SqlConnection con = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Update Buses set Seats = @Seats where BusID = @BusID";
                cmd.Parameters.AddWithValue("@Seats", (s1 + s2).ToString());
                cmd.Parameters.AddWithValue("@BusID", busID);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        string user = (string)Session["user"];
        if (user == null)
        {
            user = "Anonymous Buyer";
        }

        using (SqlConnection con = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Delete from Bookings where Username = @user AND Time = @time";
                cmd.Parameters.AddWithValue("@user", user);
                cmd.Parameters.AddWithValue("@time", time);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        Response.Redirect("Trips.aspx");

    }
}