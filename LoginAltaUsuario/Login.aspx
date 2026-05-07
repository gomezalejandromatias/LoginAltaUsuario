<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginAltaUsuario.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1>Login</h1>

    <div>
        <asp:Label Text="Usuario" runat="server" />
        <asp:TextBox ID="txtUsuario" runat="server" />

    </div>
    <div>
        <asp:Label Text="Contraseña" runat="server" />
        <asp:TextBox ID="txtContraseña" runat="server" />

    </div>
    <asp:Button ID="btnIngresar" Text="Ingresar" runat="server" OnClick="Unnamed_Click" />

</asp:Content>
