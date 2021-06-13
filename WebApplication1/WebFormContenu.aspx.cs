using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebFormContenu : System.Web.UI.Page
    {
        static db_planteEntities db = new db_planteEntities();
        static contenu c;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                if (!Page.IsPostBack)
                {
                    var n = int.Parse(Session["ID"].ToString());
                    DropDownList1.DataSource = db.jardins.Where(x => x.numjardinier == n).Distinct().ToList();
                    DropDownList1.DataTextField = "nomJ";
                    DropDownList1.DataValueField = "numJ";
                    DropDownList1.DataBind();

                    //----------------------------

                    DropDownList2.DataSource = db.Plantes.ToList();
                    DropDownList2.DataTextField = "nomP";
                    DropDownList2.DataValueField = "numP";
                    DropDownList2.DataBind();
                }
            }
            else Response.Redirect("WebFormLogin.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var n = int.Parse(DropDownList1.SelectedValue.ToString());
                var contenu = db.contenus.Where(x => x.numj == n).ToList();
                if (contenu != null)
                {
                    GridView1.DataSource = contenu;
                    GridView1.DataBind();
                }
                else Response.Write("Jardin Vide!");
            }
            catch
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c = new contenu();
            c.quantite = TextBoxQT.Text == "" ? 1 : int.Parse(TextBoxQT.Text);
            c.numj = int.Parse(DropDownList1.SelectedValue.ToString());
            c.nump = int.Parse(DropDownList2.SelectedValue.ToString());
            db.contenus.Add(c);
            db.SaveChanges();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}