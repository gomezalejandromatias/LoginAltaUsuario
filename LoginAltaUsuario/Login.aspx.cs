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

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
              
              Usuario usuario = new Usuario();

            try
            {
                usuario.NombreUsuario = txtUsuario.Text;
                usuario.Password = txtContraseña.Text;
                if (!usuario.Loguear(usuario))
                {
                    Response.Redirect("Error.aspx", false);
                    return;
                }


                if(usuario.tipousuario == TipoUusuario.ADMIN)
                {
                    Response.Redirect("Admin.aspx", false);

                    Session.Add("Usuario", usuario);

                }

                else if(usuario.tipousuario == TipoUusuario.TRAINEE)
                {


                    Response.Redirect("Trainee.aspx",false);

                }
                
                  


            }
            catch (Exception ex)
            {

                throw ex;
            }




        }
    }
}