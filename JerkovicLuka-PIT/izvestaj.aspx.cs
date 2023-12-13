using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JerkovicLuka_PIT
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage == null)
                lblPoruka.Text = "Nema podataka sa prethodne strane!";
            else
            {
                string imePrezime;
                string email;
                string godina;
                string razred;

                imePrezime = Server.HtmlEncode(((TextBox)PreviousPage.FindControl("txtIme")).Text);
                email = Server.HtmlEncode(((TextBox)PreviousPage.FindControl("txtEmail")).Text);
                godina = Server.HtmlEncode(((TextBox)PreviousPage.FindControl("txtAge")).Text);
                razred = Server.HtmlEncode(((RadioButtonList)PreviousPage.FindControl("RadioButtonList1")).Text);

                lblPoruka.Text = imePrezime + "(" + email + ")" + ", rođen " + godina + ". godine, učenik " + razred + ". razreda, uspešno je popunio obrazac za prijavu...";
            }
        }
    }
}