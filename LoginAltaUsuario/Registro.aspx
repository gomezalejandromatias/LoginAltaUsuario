<%@ Page Title="Registro de Usuarios" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Registro.aspx.cs"
    Inherits="LoginAltaUsuario.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- INICIO DEL CONTENEDOR PRINCIPAL -->
    <div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">

        <!-- INICIO DE LA CARD PRINCIPAL -->
        <div class="card shadow-lg p-5 rounded-4" style="width: 500px;">

            <!-- INICIO DEL TITULO -->
            <div class="text-center mb-4">

                <h1 class="fw-bold text-primary">Panel de Administración
                </h1>

                <p class="text-muted">
                    Alta de nuevos usuarios
                </p>

            </div>
            <!-- FIN DEL TITULO -->


            <!-- INICIO DEL CAMPO NOMBRE -->
            <div class="mb-3">

                <asp:Label Text="Nombre Completo" CssClass="form-label fw-semibold" runat="server" />

                <asp:TextBox
                    ID="txtNombre"
                    CssClass="form-control"
                    placeholder="Ingrese el nombre"
                    runat="server" />

            </div>
            <!-- FIN DEL CAMPO NOMBRE -->


            <!-- INICIO DEL CAMPO USUARIO -->
            <div class="mb-3">

                <asp:Label Text="Usuario" CssClass="form-label fw-semibold" runat="server" />

                <asp:TextBox
                    ID="txtUsuario"
                    CssClass="form-control"
                    placeholder="Ingrese el usuario"
                    runat="server" />

            </div>
            <!-- FIN DEL CAMPO USUARIO -->


            <!-- INICIO DEL CAMPO EMAIL -->
            <div class="mb-3">

                <asp:Label Text="Correo Electrónico" CssClass="form-label fw-semibold" runat="server" />

                <asp:TextBox
                    ID="txtEmail"
                    CssClass="form-control"
                    placeholder="Ingrese el email"
                    TextMode="Email"
                    runat="server" />

            </div>
            <!-- FIN DEL CAMPO EMAIL -->


            <!-- INICIO DEL CAMPO CONTRASEÑA -->
            <div class="mb-3">

                <asp:Label Text="Contraseña" CssClass="form-label fw-semibold" runat="server" />

                <asp:TextBox
                    ID="txtContraseña"
                    CssClass="form-control"
                    placeholder="Ingrese la contraseña"
                    TextMode="Password"
                    runat="server" />

            </div>
            <!-- FIN DEL CAMPO CONTRASEÑA -->


            <!-- INICIO DEL DROPDOWN TIPO USUARIO -->
            <div class="mb-4">

                <asp:Label
                    ID="lblUsuario"
                    Text="Tipo de Usuario"
                    CssClass="form-label fw-semibold"
                    runat="server" />

                <asp:DropDownList
                    ID="ddlUsuario"
                    CssClass="form-select"
                    runat="server">

                    <asp:ListItem Text="Administrador" Value="1" />
                    <asp:ListItem Text="Trainee" Value="2" />

                </asp:DropDownList>

            </div>
            <!-- FIN DEL DROPDOWN TIPO USUARIO -->


            <!-- INICIO DEL BOTON -->
            <div class="d-grid">

                <asp:Button
                    ID="btnIngresarUsuario"
                    Text="Registrar Usuario"
                    CssClass="btn btn-primary btn-lg"
                    OnClick="btnIngresarUsuario_Click"
                    runat="server" />

            </div>
            <!-- FIN DEL BOTON -->

        </div>
        <!-- FIN DE LA CARD PRINCIPAL -->

    </div>
    <!-- FIN DEL CONTENEDOR PRINCIPAL -->

</asp:Content>
