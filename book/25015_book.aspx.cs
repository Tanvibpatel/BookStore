using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _25015_book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\25015_tanvi\25015_tanvi\App_Data\25015_tanvi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
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
                Button2.Visible = true;
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
                ImageButton2.Visible = true;
                Label2.Text = Session["un"].ToString();
            }
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string path = "~/books_img/" + FileUpload1.FileName.ToString();
        FileUpload1.SaveAs(Server.MapPath(path));
        SqlCommand cmd = new SqlCommand("insert into book_db values(@book_name,@book_price,@p_name,@book_img)", con);
        cmd.Parameters.AddWithValue("@book_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@book_price", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p_name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@book_img", path);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Book uploaded successfully');" + "window.location='25015_index.aspx';", true);
    }

    protected void Button2_Click(object sender, EventArgs e)
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