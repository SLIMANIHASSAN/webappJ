using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebFormLogin : System.Web.UI.Page
    {
        static db_planteEntities db = new db_planteEntities();
        static jardinier jardinier;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLog_Click(object sender, EventArgs e)
        {
            var log = TextBoxUN.Text.ToString();
            var pass = TextBoxPW.Text.ToString();
            jardinier = db.jardiniers.Where(x => x.Login == log && x.MDP == pass).FirstOrDefault();
            if (jardinier != null)
            {
                Session["ID"] = jardinier.numJardinier.ToString();
                Session["UserName"] = jardinier.nomJardinier;
                Response.Redirect("WebFormConsult.aspx");
            }
            else Response.Write("Mot de pass ou UserName est incorrect!!");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormInscription.aspx");
        }
    }
}