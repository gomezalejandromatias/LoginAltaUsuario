using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAltaUsuario
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////ACA SE LOGUEA EL USUARIO
          


        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
              
              Usuario usuario = new Usuario();

            try
            {
                usuario.NombreUsuario = txtUsuario.Text;
                usuario.Password = txtContrasena.Text;
                if (!usuario.Loguear(usuario))
                {
                    Response.Redirect("Error.aspx", false);
                    return;
                }


                if(usuario.tipousuario == TipoUusuario.ADMIN)
                {
                    
                    Session["Usuario"] = usuario;
                    Response.Redirect("Menu.aspx", false);


                }

                else if(usuario.tipousuario == TipoUusuario.TRAINEE)
                {

                    Session["Usuario"] = usuario;
                    Response.Redirect("Menu.aspx",false);

                }
                
                  


            }
            catch (Exception ex)
            {

                throw ex;
            }




        }
    }
}