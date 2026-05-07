using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace LoginAltaUsuario 
{ 
        public enum TipoUusuario
        {
                ADMIN =1,
                TRAINEE =2


        }

    public class Usuario
    {

        public int Id { get; set; }
        public string NombreUsuario { get; set; }
        
        public string Password { get; set; }
        public string Nombre { get; set; }

        public string Email { get; set; }   
        public TipoUusuario tipousuario { get; set; }


     

        public bool Loguear(Usuario usuario)
        {
            AccesoDatos accesoDatos = new AccesoDatos();

            try
            {
                accesoDatos.setearConsulta("select Id,TipoUsuario  from Usuarios where NombreUsuario = @Usuario and Password = @Password");

                accesoDatos.agregarParametro("@Usuario", usuario.NombreUsuario);
                accesoDatos.agregarParametro("@Password", usuario.Password);

                accesoDatos.ejecutarLectura();

                while (accesoDatos.Lector.Read())
                {

                    usuario.Id = (int)accesoDatos.Lector["Id"];
                   
                   usuario.tipousuario = (int) accesoDatos.Lector["TipoUsuario"] == 1 ? TipoUusuario.ADMIN : TipoUusuario.TRAINEE;


                    return true;


                }

                return false;


            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally {accesoDatos.cerrarConexion();  }




           

        }

        public void IngresarUsuario(Usuario usuario) 
        {

            AccesoDatos accesoDatos = new AccesoDatos();



            try
            {

                accesoDatos.setearConsulta(
                    "insert into Usuarios (NombreUsuario, Password, Nombre, Email, TipoUsuario) " +
                    "OUTPUT INSERTED.Id " +
                    "values (@NombreUsuario, @Password, @Nombre, @Email, @TipoUsuario)"
                );
                accesoDatos.agregarParametro("@NombreUsuario", usuario.NombreUsuario);
                accesoDatos.agregarParametro("@Password", usuario.Password);
                accesoDatos.agregarParametro("@Nombre", usuario.Nombre);
                accesoDatos.agregarParametro("@Email", usuario.Email);
                accesoDatos.agregarParametro("@TipoUsuario", (int)usuario.tipousuario);

                usuario.Id = (int)(accesoDatos.ejecutarScalar());

               



            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { accesoDatos.cerrarConexion(); }
         
        
        
        }





    }
}