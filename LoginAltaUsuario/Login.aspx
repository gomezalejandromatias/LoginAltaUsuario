<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginAltaUsuario.RegistroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="text-center mb-5">

        <h1 class="fw-bold display-3">NovaAccess
    </h1>

        <p class="text-muted fs-5">
            Plataforma de gestión y acceso seguro
   
        </p>

    </div>



    <!-- INICIO DEL CONTENEDOR PRINCIPAL -->
    <!--CON TODO ESTO EL CONTAINER ETC QUEDA EN EL CENTRO MISMO-->
    <div class="container vh-100 d-flex justify-content-center align-items-start" style="padding-top: 120px;">


        <!--INICIO DEL CAR PRINCIPAL-->
        <div class="card shadow p-5" style="width: 400px;">

            <!-- INICIO DEL TITULO -->
            <div class="text-center mb-4">

                <h2>Iniciar Sesión</h2>

            </div>
            <!-- FIN DEL TITULO -->


            <!-- INICIO DEL CAMPO USUARIO -->
            <div class="mb-3">
                <asp:Label Text="Usuario" CssClass="d-block" runat="server" />
                <asp:TextBox ID="txtUsuario" CssClass=" form-control" runat="server" />

            </div>
            <!-- FIN DEL CAMPO USUARIO -->


            <!-- INICIO DEL CAMPO CONTRASEÑA -->
            <div class="mb-3">
                <asp:Label Text="Contraseña" CssClass="d-block" runat="server" />
                <asp:TextBox ID="txtContrasena" CssClass="form-control" runat="server" />

            </div>
            <!-- FIN DEL CAMPO CONTRASEÑA-->


            <!-- INICIO DEL BOTON -->
            <div class=" mb-3">

                <asp:Button ID="Button1" Text="Ingresar" CssClass="btn btn-primary" runat="server" OnClick="Unnamed_Click" />



            </div>
            <!-- FIN DEL BOTON -->


            <!--FINDEL CARD PRINCIPAL-->
        </div>









        <!-- FIN DEL CONTENEDOR PRINCIPAL -->
    </div>


</asp:Content>
