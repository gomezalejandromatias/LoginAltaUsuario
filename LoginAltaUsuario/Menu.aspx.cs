using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LoginAltaUsuario
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (((Usuario)Session["Usuario"]).tipousuario == TipoUusuario.TRAINEE)
            {
                btnAdminitradorMenu.Visible = false;
                lblAministrador.Visible = false;
                
                
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void btnDministradorMenu_Click(object sender, EventArgs e)
        {

        }
    }
}