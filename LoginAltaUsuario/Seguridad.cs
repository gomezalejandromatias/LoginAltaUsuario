using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace LoginAltaUsuario
{
    public static class Seguridad
    {

        public static bool SessionActiva(object user)
        {

            Usuario usuario = user != null ? (Usuario) user :null;

            if(usuario != null && usuario.Id != 0)
            

                return true;


            

           else {  return false; }
               



            
        }

  



    }
}