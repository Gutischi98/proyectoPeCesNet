<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ListarTickets.aspx.cs" Inherits="proyecto_PeCes.ListarTickets" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

    <h2>Listar Tickets</h2>
    <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="False" OnRowCommand="gvTickets_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" Visible="true" />
            <asp:BoundField DataField="Cliente.Nombre" HeaderText="Nombre Cliente" />
            <asp:BoundField DataField="Producto" HeaderText="Producto" />
            <asp:ButtonField Text="Ver detalle" CommandName="VerDetalle" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblNoTickets" runat="server" Text="No existen registros disponibles para mostrar" Visible="false"></asp:Label>

</asp:Content>
