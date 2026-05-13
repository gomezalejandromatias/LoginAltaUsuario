<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Trainee.aspx.cs" Inherits="LoginAltaUsuario.Trainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <!-- INICIO DEL CONTENEDOR PRINCIPAL -->
    <div class="container mt-5">

        <!-- INICIO DEL TITULO PRINCIPAL -->
        <div class="text-center mb-4">

            <h1>Panel Trainee</h1>

            <h4>Bienvenido trainee. 
                Esta sección es solo para usuarios con permisos básicos.
            </h4>

        </div>
        <!-- FIN DEL TITULO PRINCIPAL -->



        <!-- INICIO DE LA FILA PRINCIPAL -->
        <div class="row">

            <!-- INICIO DE LA TARJETA DE INFORMACION -->
            <div class="col-md-6">

                <div class="card shadow p-3 mb-4">

                    <h3>Información Personal</h3>

                    <p>
                        Desde esta sección podés visualizar información
                        general del sistema y practicar navegación.
                   
                    </p>

                    <asp:Button
                        ID="btnVerInfo"
                        runat="server"
                        Text="Ver Información"
                        CssClass="btn btn-primary" />

                </div>

            </div>
            <!-- FIN DE LA TARJETA DE INFORMACION -->



            <!-- INICIO DE LA TARJETA DE NAVEGACION -->
            <div class="col-md-6">

                <div class="card shadow p-3 mb-4">

                    <h3>Navegación</h3>

                    <p>
                        Desde acá podés volver al inicio
                        o seguir recorriendo el sistema.
                   
                    </p>

                    <asp:Button
                        ID="btnInicio"
                        runat="server"
                        Text="Volver al Inicio"
                        CssClass="btn btn-success" />

                </div>

            </div>
            <!-- FIN DE LA TARJETA DE NAVEGACION -->

        </div>
        <!-- FIN DE LA FILA PRINCIPAL -->



        <!-- INICIO DE LA SECCION DE AVISO -->
        <div class="card shadow p-4">

            <h3>Permisos del Usuario</h3>

            <ul>
                <li>Acceso limitado a funcionalidades básicas.</li>
                <li>No puede administrar usuarios.</li>
                <li>No puede acceder al panel administrador.</li>
                <li>Control de acceso realizado con Session.</li>
            </ul>

        </div>
        <!-- FIN DE LA SECCION DE AVISO -->


    </div>
    <!-- FIN DEL CONTENEDOR PRINCIPAL -->
</asp:Content>
