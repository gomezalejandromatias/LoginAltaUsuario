using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAltaUsuario
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresarUsuario_Click(object sender, EventArgs e)
        {
              Usuario usuario = new Usuario();


            try
            {
                
                  usuario.NombreUsuario= txtNombre.Text;
                usuario.Nombre = txtNombre.Text;
                usuario.Email = txtEmail.Text;
                usuario.Password = txtContraseña.Text;

                usuario.Loguear(usuario);

                Session.Add("Usuario", usuario);




            }
            catch (Exception ex)
            {

                throw ex;
            }




        }
    }
}