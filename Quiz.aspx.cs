using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Quiz_System
{
    public partial class Quiz : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }

        protected void getdata()
        {
            string id = Request.QueryString["id"].ToString();
            string query = "select * from  ques,ans,opt where ques.id='" + id + "' and ques.id=ans.id and ans.id=opt.id";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            lvquiz.DataSource = dt;
            lvquiz.DataBind();
        }

        protected void ans1(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;
            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a1") as Label);
            //Label lbm = ((sender as LinkButton).NamingContainer.FindControl("lbmark") as Label);

            var i = Convert.ToInt32(lbmark.Text);

            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans2(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a2") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans3(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a3") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans4(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a4") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans5(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a5") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans6(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a6") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans7(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a7") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans8(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a8") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans9(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a9") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }
        protected void ans10(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Label lb = ((sender as LinkButton).NamingContainer.FindControl("a10") as Label);
            var i = Convert.ToInt32(lbmark.Text);
            if (id == lb.Text)
            {
                lkb.BackColor = System.Drawing.Color.LightGreen;
                i = i + 1;
                lbmark.Text = i.ToString();
            }
            else
            {
                lkb.BackColor = System.Drawing.Color.Red;
                lb.Visible = true;
            }
        }

        protected void submit(object sender, EventArgs e)
        {
            var i = Convert.ToInt32(lbmark.Text);
            if (i >= 5)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "alert", "swal('PASSED!', 'You have given " + i + " correct answer!', 'success');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "alert", "swal('FAILED!', 'You have given " + i + " correct answer!', 'warning');", true);
            }
        }
    }
}