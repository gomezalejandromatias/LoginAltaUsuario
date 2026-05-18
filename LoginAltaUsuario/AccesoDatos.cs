using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginAltaUsuario
{
    public class AccesoDatos
    {
        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataReader lector;

        public AccesoDatos()
        {
           // conexion = new SqlConnection("server=localhost\\SQLEXPRESS02; database=LoginBD; integrated security=true");
           conexion = new SqlConnection("Data Source=.;Initial Catalog=LoginBD;Integrated Security=True");
            comando = new SqlCommand();
        }

        public void setearConsulta(string consulta)
        {
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }

        public void abrirConexion()
        {
            comando.Connection = conexion;
            conexion.Open();
        }

        public void ejecutarLectura()
        {
            abrirConexion();
            lector = comando.ExecuteReader();
        }

        public SqlDataReader Lector
        {
            get { return lector; }
        }

        public void cerrarConexion()
        {
            if (lector != null)
                lector.Close();

            conexion.Close();
        }
        public void agregarParametro(string nombre, object valor)
        {
            comando.Parameters.AddWithValue(nombre, valor);
        }
        public object ejecutarScalar()
        {
            abrirConexion();
            return comando.ExecuteScalar();
        }




    }
}