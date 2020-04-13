using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Atividade_3Sem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            if(txtUsuario.Text == "admin" && txtSenha.Text == "1234")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblerro.Visible = true;
            }
        }
    }
}