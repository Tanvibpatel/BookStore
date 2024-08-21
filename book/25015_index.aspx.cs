using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _25015_index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\25015_tanvi\25015_tanvi\App_Data\25015_tanvi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from book_db", con);
            SqlDataReader rd = cmd.ExecuteReader();
            Repeater1.DataSource = rd;
            Repeater1.DataBind();

            con.Close();
            
                if (Session["un"] == null)
                {

                }
                else
                {
                Label1.Visible = true;
                Label2.Visible = true;
                Button1.Visible = true;
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
                ImageButton2.Visible = true;
                Label2.Text = Session["un"].ToString();
            }
            
        }
    }

    protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            if (Session["un"] == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Please Login First');" + "window.location='25015_login.aspx';", true);
            }
            else
            {
                string bid = e.CommandArgument.ToString();
                int quantity = 1;
                String dt = DateTime.Now.ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into cart_db values(@b_id,@Id,@qty,@date)", con);
                cmd.Parameters.AddWithValue("@b_id", bid);
                cmd.Parameters.AddWithValue("@Id", Session["uid"].ToString());
                cmd.Parameters.AddWithValue("@qty", quantity);
                cmd.Parameters.AddWithValue("@date", dt);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session["un"] = null;
        Response.Redirect("25015_index.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("25015_cart.aspx");
    }
}