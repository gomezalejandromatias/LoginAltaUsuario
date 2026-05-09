<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LoginAltaUsuario.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1>Menu</h1>
    <div>
        <div>
            <asp:Label ID="lblAministrador" Text="Administrador" runat="server" />
            <asp:Button ID="btnAdminitradorMenu" Text="Boton De Administrador" runat="server" OnClick="Unnamed_Click" />

        </div>
        <br />
        <div>
            <asp:Label ID="lblTrainee" Text="Trianee" runat="server" />
            <asp:Button ID="btnDministradorMenu" Text="Boton Trainee" runat="server" OnClick="btnDministradorMenu_Click" />

        </div>

    </div>
</asp:Content>
