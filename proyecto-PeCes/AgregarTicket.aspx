<%@ Page Title="Agregar Ticket" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AgregarTicket.aspx.cs" Inherits="proyecto_PeCes.AgregarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
     <h2>Agregar Ticket de Soporte</h2>
    <table>
        <tr>
            <td><asp:Label ID="lblClienteNombreLabel" runat="server" Text="Nombre:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteNombre" runat="server" ControlToValidate="txtClienteNombre"
                    ErrorMessage="El nombre es obligatorio." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvClienteNombre" runat="server" ControlToValidate="txtClienteNombre"
                    ErrorMessage="El nombre debe tener al menos 5 caracteres." ValidationGroup="vgCrearTicket"
                    OnServerValidate="ValidateClienteNombre"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteRutLabel" runat="server" Text="RUT:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteRut" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteRut" runat="server" ControlToValidate="txtClienteRut"
                    ErrorMessage="El RUT es obligatorio." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revClienteRut" runat="server" ControlToValidate="txtClienteRut"
                    ErrorMessage="Formato de RUT inválido." ValidationGroup="vgCrearTicket"
                    ValidationExpression="^(\d{8,9}-[\dkK])$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteTelefonoLabel" runat="server" Text="Teléfono:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteTelefono" runat="server" ControlToValidate="txtClienteTelefono"
                    ErrorMessage="El teléfono es obligatorio." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteEmailLabel" runat="server" Text="Email:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClienteEmail" runat="server" ControlToValidate="txtClienteEmail"
                    ErrorMessage="El email es obligatorio." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revClienteEmail" runat="server" ControlToValidate="txtClienteEmail"
                    ErrorMessage="Formato de email inválido." ValidationGroup="vgCrearTicket"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClienteTipoLabel" runat="server" Text="Tipo de Cliente:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlTipoCliente" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoCliente_SelectedIndexChanged">
                    <asp:ListItem Value="Seleccionar" Text="Seleccionar" Disabled="true" Selected="true"></asp:ListItem>
                    <asp:ListItem Value="PersonaNatural" Text="Persona Natural"></asp:ListItem>
                    <asp:ListItem Value="Empresa" Text="Empresa"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvTipoCliente" runat="server" ControlToValidate="ddlTipoCliente"
                    InitialValue="Seleccionar" ErrorMessage="Debe seleccionar un tipo de cliente." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id="trRazonSocial" runat="server" visible="false">
            <td><asp:Label ID="lblClienteRazonSocialLabel" runat="server" Text="Razón Social:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtClienteRazonSocial" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td><asp:Label ID="lblProductoLabel" runat="server" Text="Producto:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtProducto" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto"
                    ErrorMessage="El producto es obligatorio." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvProducto" runat="server" ControlToValidate="txtProducto"
                    ErrorMessage="El producto debe tener al menos 10 caracteres." ValidationGroup="vgCrearTicket"
                    OnServerValidate="ValidateProducto"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcionLabel" runat="server" Text="Descripción:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion"
                    ErrorMessage="La descripción es obligatoria." ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvDescripcion" runat="server" ControlToValidate="txtDescripcion"
                    ErrorMessage="La descripción debe tener al menos 10 caracteres." ValidationGroup="vgCrearTicket"
                    OnServerValidate="ValidateDescripcion"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label></td>
            <td><asp:TextBox ID="txtEstado" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="btnCrearTicket" runat="server" Text="Crear Ticket" OnClick="btnCrearTicket_Click" ValidationGroup="vgCrearTicket" />
</asp:Content>
