<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="LoginAltaUsuario.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!-- INICIO DEL CONTENEDOR PRINCIPAL -->
    <div class="container mt-5">

        <!-- INICIO DEL TITULO PRINCIPAL -->
        <div class="text-center mb-4">

            <h1>Panel de Administrador</h1>

            <h4>Bienvenido administrador. 
                Desde esta sección podés gestionar usuarios y navegar por el sistema.
            </h4>

        </div>
        <!-- FIN DEL TITULO PRINCIPAL -->


        <!-- INICIO DE LA FILA PRINCIPAL -->
        <div class="row">

            <!-- INICIO DE LA TARJETA DE USUARIOS -->
            <div class="col-md-6">

                <div class="card shadow p-3 mb-4">

                    <h3>Gestión de Usuarios</h3>

                    <p>
                        Desde acá podés dar de alta usuarios nuevos
                        y administrar permisos del sistema.
                   
                    </p>

                    <asp:Button
                        ID="btnAltaUsuario"
                        runat="server"
                        Text="Dar Alta Usuario"
                        CssClass="btn btn-primary" />

                </div>

            </div>
            <!-- FIN DE LA TARJETA DE USUARIOS -->



            <!-- INICIO DE LA TARJETA DE TRAINEE -->
            <div class="col-md-6">

                <div class="card shadow p-3 mb-4">

                    <h3>Zona Trainee</h3>

                    <p>
                        Accedé a la página trainee para probar permisos
                        y navegación entre roles.
                   
                    </p>

                    <asp:Button
                        ID="btnPaginaTrainee"
                        runat="server"
                        Text="Ir a la página Trainee"
                        CssClass="btn btn-success"
                        OnClick="btnPaginaTrainee_Click" />

                </div>

            </div>
            <!-- FIN DE LA TARJETA DE TRAINEE -->

        </div>
        <!-- FIN DE LA FILA PRINCIPAL -->



        <!-- INICIO DE LA SECCION DE INFORMACION -->
        <div class="card shadow p-4">

            <h3>Información del Sistema</h3>

            <ul>
                <li>Control de acceso mediante Session.</li>
                <li>Roles: Admin y Trainee.</li>
                <li>Protección de páginas por permisos.</li>
                <li>Login realizado con ASP.NET WebForms.</li>
            </ul>

        </div>
        <!-- FIN DE LA SECCION DE INFORMACION -->


    </div>
    <!-- FIN DEL CONTENEDOR PRINCIPAL -->
</asp:Content>
