using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebFormConsult : System.Web.UI.Page
    {
        static db_planteEntities db =new db_planteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                int n = Convert.ToInt32(Session["ID"].ToString());
                var t = db.jardins.Where(x => x.numjardinier == n).ToList();
                GridView1.DataSource = t;
                GridView1.DataBind();
            }
            else Response.Redirect("WebFormLogin.aspx");
            
        }
    }
}