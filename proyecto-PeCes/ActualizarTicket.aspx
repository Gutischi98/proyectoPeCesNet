<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="proyecto_PeCes.ActualizarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

    <h2>Actualizar Ticket</h2>
    <table>
        <tr>
            <td><asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label></td>
            <td><asp:Label ID="lblIdValue" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtProducto" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto es obligatorio" ValidationGroup="vgActualizarTicket"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto debe tener al menos 10 caracteres" ValidationExpression=".{10,}" ValidationGroup="vgActualizarTicket"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción es obligatoria" ValidationGroup="vgActualizarTicket"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción debe tener al menos 10 caracteres" ValidationExpression=".{10,}" ValidationGroup="vgActualizarTicket"></asp:RegularExpressionValidator>
            </td>
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
            <td>
                <asp:TextBox ID="txtClienteTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteTelefono" runat="server" ControlToValidate="txtClienteTelefono" ErrorMessage="El teléfono es obligatorio" ValidationGroup="vgActualizarTicket"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteEmail" runat="server" Text="Email Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteEmail" runat="server" ControlToValidate="txtClienteEmail" ErrorMessage="El email es obligatorio" ValidationGroup="vgActualizarTicket"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revClienteEmail" runat="server" ControlToValidate="txtClienteEmail" ErrorMessage="Formato de email inválido" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ValidationGroup="vgActualizarTicket"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr id="trRazonSocial" runat="server">
            <td><asp:Label ID="lblClienteRazonSocial" runat="server" Text="Razón Social Cliente:"></asp:Label></td>
            <td><asp:Label ID="lblClienteRazonSocialValue" runat="server"></asp:Label></td>
        </tr>
    </table>
    <asp:Button ID="btnActualizarTicket" runat="server" Text="Actualizar Ticket" OnClick="btnActualizarTicket_Click" ValidationGroup="vgActualizarTicket"/>
</asp:Content>
