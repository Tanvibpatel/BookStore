using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\25015_tanvi\25015_tanvi\App_Data\25015_tanvi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select a.*,b.* from cart_db as a,book_db as b where a.b_id = b.b_id", con);
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

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            string bid = e.CommandArgument.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from cart_db where cart_id = '" + bid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Successfully removed from cart');" + "window.location='25015_index.aspx';", true);
        }
        if (e.CommandName == "sub")
        {
            string bid = e.CommandArgument.ToString();
            TextBox id = (TextBox)(e.Item.FindControl("TextBox1"));
            int qty = Convert.ToInt32(id.Text);
            if (qty == 1)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from cart_db where cart_id = '" + bid + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Successfully removed from cart');" + "window.location='25015_index.aspx';", true);
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update cart_db set qty = qty-1 where cart_id = '" + bid + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("25015_cart.aspx");
            }
        }
        if (e.CommandName == "add")
        {
            string bid = e.CommandArgument.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("update cart_db set qty = qty+1 where cart_id = '" + bid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("25015_cart.aspx");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("25015_cart.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session["un"] = null;
        Response.Redirect("25015_index.aspx");
    }
}