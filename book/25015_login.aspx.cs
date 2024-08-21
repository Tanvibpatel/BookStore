using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _25015_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\25015_tanvi\25015_tanvi\App_Data\25015_tanvi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from register_db where user_mail ='" + TextBox1.Text + "'and user_pass='" + TextBox2.Text + "'", con);
        var check = cmd.ExecuteReader();
        if (check.HasRows)
        {
            check.Read();
            string username = check["user_name"].ToString();
            string uid = check["Id"].ToString();
            //Craeting session with name un
            Session["un"] = username;
            Session["uid"] = uid;
            Response.Redirect("25015_index.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Please Register First');" + "window.location='25015_register.aspx';", true);
        }
        con.Close();
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