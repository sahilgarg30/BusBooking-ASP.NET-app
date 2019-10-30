using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bus"].ConnectionString;

        if (!IsPostBack) {
            string busID = Request.QueryString["BusID"];
            string seatsLeft = Request.QueryString["seatsLeft"];
            string seats = Request.QueryString["seats"];

            int s1, s2;
            int.TryParse(seatsLeft, out s1);
            int.TryParse(seats, out s2);
            if (s2 <= s1)
            {
                using (SqlConnection con = new SqlConnection(conn))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = "Update Buses set Seats = @Seats where BusID = @BusID";
                        cmd.Parameters.AddWithValue("@Seats", (s1 - s2).ToString());
                        cmd.Parameters.AddWithValue("@BusID", busID);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        
                    }
                }

                string user = (string)Session["user"];
                if(user == null)
                {
                    user = "Anonymous Buyer";
                }

                using (SqlConnection con = new SqlConnection(conn))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = "Insert into Bookings values (@user,@bus,@time,@seats)";
                        cmd.Parameters.AddWithValue("@user", user);
                        cmd.Parameters.AddWithValue("@bus", busID);
                        cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString());
                        cmd.Parameters.AddWithValue("@seats", s2.ToString());
                        con.Open();
                        cmd.ExecuteNonQuery();

                    }
                }

                label1.Text = seats + " seats have been booked in bus with Bus ID as " + busID + ".<br/>Booking confirmed! Check your past trips for more details";
            }else
            {
                label1.Text = "Enough seats are not available. Booking failed.";
            }

        }
    }
}