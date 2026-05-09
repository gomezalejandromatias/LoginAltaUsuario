using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAltaUsuario
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             

            if (Session["Usuario"]!= null)
            {
                Usuario usuario = (Usuario)Session["Usuario"];
              
               if(usuario.tipousuario == TipoUusuario.TRAINEE)
               {
                    lnkAdministrador.Visible = false;
                    lnkAltaUsuario.Visible=false;



               }


            }
        }

        protected void LnkCerrarCeson_ServerClick(object sender, EventArgs e)
        {
            ///cierra la cesion deja null session
            Session.Clear();
            ///abandona todo cierra todo deja en 0
            Session.Abandon();

            Response.Redirect("Login.aspx");


        }
    }
}