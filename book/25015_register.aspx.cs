using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _25015_register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\25015_tanvi\25015_tanvi\App_Data\25015_tanvi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into register_db values(@user_name,@user_mail,@user_pass,@user_add)",con);
        cmd.Parameters.AddWithValue("@user_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@user_mail", TextBox2.Text);
        cmd.Parameters.AddWithValue("@user_pass", TextBox3.Text);
        cmd.Parameters.AddWithValue("@user_add", TextBox4.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("25015_register.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["un"] == null)
            {

            }
            else
            {
                Label1.Visible = true;
                Label2.Visible = true;
                Button1.Visible = true;
                HyperLink1.Visible = false;
                Label2.Text = Session["un"].ToString();
            }
        }
    }
}