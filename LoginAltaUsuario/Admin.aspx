<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="LoginAltaUsuario.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1> Admin   </h1>

    <h2> Esta es la pagina de Administrador Podes dar de alta a usuarios y navegar por toda la pagina   </h2>

    <asp:Label Text="Aca podes ir a la pagina de tarinee" runat="server" />
    <br />
    <div>
        <asp:Button ID="btnPaginaTrainee" Text="Ir a la pagina Trainee" runat="server" OnClick="btnPaginaTrainee_Click"/>
    </div>
</asp:Content>
