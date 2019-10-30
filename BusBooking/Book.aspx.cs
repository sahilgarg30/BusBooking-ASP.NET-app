using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;



public partial class Book : System.Web.UI.Page

{
    public string selectedbus;
    public string seatsLeft;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            seats.Visible = false;
            num_seats.Visible = false;
            book.Visible = false;
            companies.Items.Add("VRL Travels");
            companies.Items.Add("Neeta Travels");
            companies.Items.Add("Orange Travels");
            source.Items.Add("Mumbai");
            source.Items.Add("Delhi");
            source.Items.Add("Chennai");
            source.Items.Add("Bangalore");
            destination.Items.Add("Mumbai");
            destination.Items.Add("Delhi");
            destination.Items.Add("Chennai");
            destination.Items.Add("Bangalore");
            for(int i = 0; i < 24; i++)
            {
                etime.Items.Add((i*100).ToString());
                stime.Items.Add((i*100).ToString());
            }

            stime.SelectedIndex = 0;
            etime.SelectedIndex = 23;
            
        }
    }
    protected void selection_changed(object sender, EventArgs e)
    {
        seats.Visible = true;
        num_seats.Visible = true;
        book.Visible = true;
        
    }
    protected void Book_Ticket(object sender, EventArgs e)
    {
        string url = "Confirm.aspx?BusID=";
        url += HttpUtility.UrlEncode(GridView1.SelectedRow.Cells[1].Text);
        url += "&seatsLeft=";
        url += HttpUtility.UrlEncode(GridView1.SelectedRow.Cells[7].Text);
        url+="&seats=";
        url += HttpUtility.UrlEncode(num_seats.Text);
        Response.Redirect(url);
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
}