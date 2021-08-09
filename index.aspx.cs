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
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["connect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }

        protected void createquiz(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 1;
        }

        protected void quizlist(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 2;
        }

        protected void back(object sender, EventArgs e)
        {
            mv.ActiveViewIndex = 0;
        }

        protected void create(object sender, EventArgs e)
        {
            string query1 = "insert into ques values('" + tbq1.Text + "','" + tbq2.Text + "','" + tbq3.Text + "','" + tbq4.Text + "','" + tbq5.Text + "','" + tbq6.Text + "','" + tbq7.Text + "','" + tbq8.Text + "','" + tbq9.Text + "','" + tbq10.Text + "','" + qzt.Text + "')";
            SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            string query2 = "insert into ans values((select id from ques where title='" + qzt.Text + "'),'" + tba1.Text + "','" + tba2.Text + "','" + tba3.Text + "','" + tba4.Text + "','" + tba5.Text + "','" + tba6.Text + "','" + tba7.Text + "','" + tba8.Text + "','" + tba9.Text + "','" + tba10.Text + "')";
            SqlDataAdapter da2 = new SqlDataAdapter(query2, con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            string query3 = "insert into opt values((select id from ques where title='" + qzt.Text + "'),'" + tbq1o1.Text + "','" + tbq1o2.Text + "','" + tbq1o3.Text + "','" + tbq1o4.Text + "','" + tbq2o1.Text + "','" + tbq2o2.Text + "','" + tbq2o3.Text + "','" + tbq2o4.Text + "','" + tbq3o1.Text + "','" + tbq3o2.Text + "','" + tbq3o3.Text + "','" + tbq3o4.Text + "','" + tbq4o1.Text + "','" + tbq4o2.Text + "','" + tbq4o3.Text + "','" + tbq4o4.Text + "','" + tbq5o1.Text + "','" + tbq5o2.Text + "','" + tbq5o3.Text + "','" + tbq5o4.Text + "','" + tbq6o1.Text + "','" + tbq6o2.Text + "','" + tbq6o3.Text + "','" + tbq6o4.Text + "','" + tbq7o1.Text + "','" + tbq7o2.Text + "','" + tbq7o3.Text + "','" + tbq7o4.Text + "','" + tbq8o1.Text + "','" + tbq8o2.Text + "','" + tbq8o3.Text + "','" + tbq8o4.Text + "','" + tbq9o1.Text + "','" + tbq9o2.Text + "','" + tbq9o3.Text + "','" + tbq9o4.Text + "','" + tbq10o1.Text + "','" + tbq10o2.Text + "','" + tbq10o3.Text + "','" + tbq10o4.Text + "')";
            SqlDataAdapter da3 = new SqlDataAdapter(query3, con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void getdata()
        {
            string query = "select id,title from  ques";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            lvquiz.DataSource = dt;
            lvquiz.DataBind();
        }

        protected void start(object sender, EventArgs e)
        {
            LinkButton lkb = sender as LinkButton;
            string id = lkb.CommandArgument;

            Response.Redirect("Quiz.aspx?id=" + id);
        }
    }
}
