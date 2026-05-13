<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LoginAltaUsuario.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!-- INICIO DEL CONTENEDOR PRINCIPAL -->
    <div class="container mt-5">


        <!-- INICIO DE LA SECCION DE BIENVENIDA -->
        <div class="text-center mb-5">

            <h1 class="display-4">Sistema Comercial</h1>

            <p class="lead">
                Bienvenido al panel principal del sistema.
            Utilizá el menú superior para navegar entre las distintas secciones.
            </p>

        </div>
        <!-- FIN DE LA SECCION DE BIENVENIDA -->



        <!-- INICIO DE LA FILA PRINCIPAL -->
        <div class="row text-center">


            <!-- INICIO DE LA TARJETA 1 -->
            <div class="col-md-4">

                <div class="card shadow p-4 mb-4">

                    <h3>Gestión</h3>

                    <p>
                        Administración general del sistema y control de usuarios.
                    </p>

                    <h1>📊</h1>

                </div>

            </div>
            <!-- FIN DE LA TARJETA 1 -->



            <!-- INICIO DE LA TARJETA 2 -->
            <div class="col-md-4">

                <div class="card shadow p-4 mb-4">

                    <h3>Ventas</h3>

                    <p>
                        Control de operaciones, compras y movimientos comerciales.
                    </p>

                    <h1>💰</h1>

                </div>

            </div>
            <!-- FIN DE LA TARJETA 2 -->



            <!-- INICIO DE LA TARJETA 3 -->
            <div class="col-md-4">

                <div class="card shadow p-4 mb-4">

                    <h3>Seguridad</h3>

                    <p>
                        Sistema protegido mediante login y permisos de acceso.
                    </p>

                    <h1>🔐</h1>

                </div>

            </div>
            <!-- FIN DE LA TARJETA 3 -->


        </div>
        <!-- FIN DE LA FILA PRINCIPAL -->



        <!-- INICIO DE LA SECCION INFERIOR -->
        <div class="card shadow p-5 text-center">

            <h2>Panel Principal</h2>

            <p>
                Este sistema fue desarrollado con ASP.NET WebForms y Bootstrap.
            </p>

            <p>
                Navegá utilizando el menú superior para acceder a las distintas páginas.
            </p>

        </div>
        <!-- FIN DE LA SECCION INFERIOR -->


    </div>
    <!-- FIN DEL CONTENEDOR PRINCIPAL -->
</asp:Content>
