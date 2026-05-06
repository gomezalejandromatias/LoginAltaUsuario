<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginAltaUsuario.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hola</h1>
            <div>
                <asp:Label Text="Nombre" runat="server" />
                <asp:TextBox ID="txtNombre" runat="server" />



            </div>
            <div>
                <asp:Label Text="Usuario" runat="server" />
                <asp:TextBox ID="txtUsuario" runat="server" />

            </div>
            <div>
                <asp:Label Text="Email" runat="server" />
                <asp:TextBox ID="txtEmail" runat="server" />

            </div>

            <div>
                <asp:Label Text="Contraseña" runat="server" />
                <asp:TextBox ID="txtContraseña" runat="server" />
            </div>

        </div>
        <asp:Button ID="btnIngresarUsuario" Text="Ingresar Usuario" OnClick="btnIngresarUsuario_Click" runat="server" />

    </form>
</body>
</html>
