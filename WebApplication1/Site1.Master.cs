using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                var d = DateTime.Now.TimeOfDay;
                var t = DateTime.Parse("12:00").TimeOfDay;
                if (d > t)
                {
                    Labeltime.Text = "Bonnesoire";
                }
                else Labeltime.Text = "Bonjour";

                //--------------------------

                LabelNom.Text = Session["UserName"].ToString();
            }
            else Response.Redirect("WebFormLogin.aspx");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebFormLogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormConsult.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormContenu.aspx");
        }
    }
}