using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebFormInscription : System.Web.UI.Page
    {
        static db_planteEntities db = new db_planteEntities();
        static jardinier j;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text) && !string.IsNullOrEmpty(TextBoxNom.Text) && !string.IsNullOrEmpty(TextBoxUN.Text) && !string.IsNullOrEmpty(TextBoxPW.Text) && !string.IsNullOrEmpty(TextBoxCP.Text))
            {
                var log = TextBoxUN.Text.ToString();
                var date = Convert.ToDateTime(TextBox2.Text.ToString()).Date;
                var pw = TextBoxPW.Text.ToString();
                j = db.jardiniers.Where(x => x.Login == log).FirstOrDefault();
                if (j == null)
                {
                    if (date < DateTime.Now)
                    {
                        if (pw.Length >= 5)
                        {
                            if (TextBoxCP.Text.ToString() == pw)
                            {
                                j = new jardinier();
                                j.prenom = TextBox1.Text;
                                j.nomJardinier = TextBoxNom.Text;
                                j.dateEmbauche = date;
                                j.Login = TextBoxUN.Text.ToString();
                                j.MDP = TextBoxPW.Text.ToString();
                                db.jardiniers.Add(j);
                                db.SaveChanges();
                                Response.Redirect("WebFormLogin.aspx");
                            }
                            else Response.Write("La confirmation Du mot de pass echouer!!");
                        }
                        else Response.Write("Le mot de pass doit etre aux moin 6 caracteres");
                    }
                    else Response.Write("la date peux pas etre > now");
                }
                else Response.Write("Username already existed!!");
            }
            else Response.Write("toute les champ et obligatoire");
        }
    }
}