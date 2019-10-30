using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page

{
    string conn = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bus"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HttpCookie cookie = Request.Cookies["user"];
            if (cookie != null)
                username.Text = cookie["username"];
        }
    }



    protected void signup_Click(object sender, ImageClickEventArgs e)
    {
        using (SqlConnection con = new SqlConnection(conn))
        {
            using(SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Insert into Users values (@name,@email,@user,@pass)";
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                cmd.Parameters.AddWithValue("@user", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                Label10.Text = "Successfully Registered!";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
        }

    }

    protected void login_Click(object sender, ImageClickEventArgs e)
    {
        string pass = "";
        using (SqlConnection con = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "select Password from Users where Username = @user";
                cmd.Parameters.AddWithValue("@user", username.Text);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.Read())
                    pass = (string)reader["Password"];
                else
                {
                    Label10.Text = "Invalid credentials";
                    return;
                }
            }
        }

        if (pass.Equals(password.Text))
        {
            HttpCookie cookie = new HttpCookie("user");
            cookie["username"] = username.Text;
            cookie.Expires = DateTime.Now.AddYears(2);
            Response.Cookies.Clear();
            Response.Cookies.Add(cookie);
            Session["user"] = username.Text;
            Response.Redirect("Book.aspx");
        }
        else
        {
            Label10.Text = "Invalid credentials";
        }
    }

    protected void admin_login_Click(object sender, ImageClickEventArgs e)
    {
        if(username.Text.Equals("admin") && password.Text.Equals("admin123")){
            Response.Redirect("Admin_bus.aspx");
        }else
        {
            Label10.Text = "Invalid credentials";
        }
    }
}