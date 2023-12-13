using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JerkovicLuka_PIT
{
    public partial class prijava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtImeValidator.IsValid && txtEmailValidator.IsValid
                && txtEmailExpression.IsValid && radioButtonValidator.IsValid &&
                txtConfirmValidator.IsValid && PorediLozinkeValidator.IsValid &&
                txtAgeValidator.IsValid && GodineValidator.IsValid)
            {
                lblPoruka.Text = "Ispravno su popunjena sva polja.";
                btnSubmit.PostBackUrl = "~/izvestaj.aspx";
            }
            else
                lblPoruka.Text = "Neka polja nisu ipravno popunjena!";
        }
    }
}