<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="proyecto_PeCes.DetalleTicket" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

     <h2>Detalle Ticket</h2>
    <table>
        
    </table>
    <asp:Button ID="btnVolver" runat="server" Text="Volver" PostBackUrl="~/ListarTickets.aspx" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" PostBackUrl='<%# "ActualizarTicket.aspx?id=" + Eval("Id") %>' />

</asp:Content>
