<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="proyecto_PeCes.DetalleTicket" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

     <h2>Detalle Ticket</h2>
    <table>
         
        <tr>
            <td><asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label></td>
            <td><asp:Label ID="lblIdValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label></td>
            <td><asp:Label ID="lblProductoValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label></td>
            <td><asp:Label ID="lblDescripcionValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label></td>
            <td><asp:Label ID="lblEstadoValue" runat="server"></asp:Label></td>
        </tr>    
        <tr>
            <td><asp:Label ID="lblClienteNombre" runat="server" Text="Nombre Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteNombreValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteRut" runat="server" Text="RUT Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteRutValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteTelefono" runat="server" Text="Teléfono Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteTelefonoValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteEmail" runat="server" Text="Email Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteEmailValue" runat="server"></asp:Label></td>
        </tr>
        <tr id="trRazonSocial" runat="server">
            <td><asp:Label ID="lblClienteRazonSocial" runat="server" Text="Razón Social Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteRazonSocialValue" runat="server"></asp:Label></td>
        </tr>
    </table>
    <asp:Button ID="btnVolver" runat="server" Text="Volver" PostBackUrl="~/ListarTickets.aspx" />
     <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />

</asp:Content>
