using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_bus : System.Web.UI.Page
{
    string conn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bus"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for(int i = 0; i < 24; i++)
            {
                time.Items.Add((i).ToString());
            }

            
        }
    }

    protected void signup_Click(object sender, ImageClickEventArgs e)
    {
        using (SqlConnection con = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Insert into Buses values (@BusID,@Com,@source,@destn,@date,@time,@seats)";
                cmd.Parameters.AddWithValue("@BusID", id.Text);
                cmd.Parameters.AddWithValue("@Com", company.Text);
                cmd.Parameters.AddWithValue("@source", source.Text);
                cmd.Parameters.AddWithValue("@destn", destination.Text);
                int ti = 0;
                int.TryParse(time.SelectedItem.Text,out ti);
                cmd.Parameters.AddWithValue("@time",ti * 100);
                cmd.Parameters.AddWithValue("@date", Calendar1.SelectedDate.Date.ToShortDateString());
                cmd.Parameters.AddWithValue("@seats", num_seats.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                id.Text = "";
                company.Text = "";
                source.Text = "";
                destination.Text = "";
                num_seats.Text = "";
            }
        }

        Response.Redirect("Admin_bus.aspx");
    }
}