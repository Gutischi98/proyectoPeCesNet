<%@ Page Title="Agregar Ticket" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AgregarTicket.aspx.cs" Inherits="proyecto_PeCes.AgregarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <h2>Crear Ticket de Soporte</h2>
    <table>

        <tr>
            <td><asp:Label ID="lblNombre" runat="server" Text="Nombre Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre debe tener al menos 5 caracteres." ValidationExpression=".{5,}" ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRut" runat="server" Text="RUT Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El RUT es obligatorio." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El formato del RUT no es válido." ValidationExpression="^(\d{8,9}-[\dkK])$" ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelefono" runat="server" Text="Teléfono Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El teléfono es obligatorio." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmail" runat="server" Text="Email Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email es obligatorio." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El formato del email no es válido." ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTipoCliente" runat="server" Text="Tipo de Cliente:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlTipoCliente" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoCliente_SelectedIndexChanged">
                    <asp:ListItem Text="Seleccionar" Value="" />
                    <asp:ListItem Text="Persona Natural" Value="PersonaNatural" />
                    <asp:ListItem Text="Empresa" Value="Empresa" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvTipoCliente" runat="server" ControlToValidate="ddlTipoCliente" InitialValue="" ErrorMessage="Debe seleccionar un tipo de cliente." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr id="trRazonSocial" runat="server" visible="false">
            <td><asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social Cliente:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Nombre del Producto:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtProducto" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto es obligatorio." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto debe tener al menos 10 caracteres." ValidationExpression=".{10,}" ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción del Producto:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto es obligatoria." ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto debe tener al menos 10 caracteres." ValidationExpression=".{10,}" ValidationGroup="vgCrearTicket" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnAgregarTicket" runat="server" Text="Agregar Ticket" OnClick="btnAgregarTicket_Click" ValidationGroup="vgCrearTicket" />
</asp:Content>
