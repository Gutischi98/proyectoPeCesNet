<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AgregarTicket.aspx.cs" Inherits="proyecto_PeCes.AgregarTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

    <h2>Agregar Ticket</h2>
    <table>
       
        <tr>
            <td><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></td>
            <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRut" runat="server" Text="RUT:"></asp:Label></td>
            <td><asp:TextBox ID="txtRut" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label></td>
            <td><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblTipoCliente" runat="server" Text="Tipo de Cliente:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlTipoCliente" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoCliente_SelectedIndexChanged">
                    <asp:ListItem Text="Seleccionar" Value="0" Enabled="False" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Persona Natural" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Empresa" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr id="trRazonSocial" runat="server" visible="false">
            <td><asp:Label ID="lblRazonSocial" runat="server" Text="Razón Social:"></asp:Label></td>
            <td><asp:TextBox ID="txtRazonSocial" runat="server"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td><asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label></td>
            <td><asp:TextBox ID="txtProducto" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label></td>
            <td><asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label></td>
            <td><asp:TextBox ID="txtEstado" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnAgregarTicket" runat="server" Text="Agregar Ticket" OnClick="btnAgregarTicket_Click" /></td>
        </tr>
    </table>

</asp:Content>