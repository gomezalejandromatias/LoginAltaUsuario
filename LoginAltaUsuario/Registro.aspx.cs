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
            ///ACA DOY DE ALTA EL USUARIO

          /* if(! Seguridad.SessionActiva(Session["Usuario"]))
            {

                Response.Redirect("Login.aspx", false);
                return;

            }
               */

        }

        protected void btnIngresarUsuario_Click(object sender, EventArgs e)
        {
              Usuario usuario = new Usuario();


            try
            {
                
                  usuario.NombreUsuario= txtUsuario.Text;
                usuario.Nombre = txtNombre.Text;
                usuario.Email = txtEmail.Text;
                usuario.Password = txtContraseña.Text;

                usuario.tipousuario = (TipoUusuario)int.Parse(ddlUsuario.SelectedValue);

                usuario.IngresarUsuario(usuario);

                Session.Add("Usuario", usuario);

                Response.Redirect("Login.aspx",false);




            }
            catch (Exception ex)
            {

                throw ex;
            }




        }
    }
}