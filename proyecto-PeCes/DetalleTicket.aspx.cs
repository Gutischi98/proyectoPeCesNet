using Capa_logica.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_PeCes
{
    public partial class DetalleTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ticketId = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(ticketId))
                {
                    Ticket ticket = TicketController.Read(ticketId);
                    if (ticket != null)
                    {
                        MostrarDetalles(ticket);
                    }
                    else
                    {
                        Response.Write("Error: Ticket no encontrado");
                    }
                }
            }
        }

        private void MostrarDetalles(Ticket ticket)
        {
            lblId.Text = ticket.Id;
            lblProducto.Text = ticket.Producto;
            lblDescripcion.Text = ticket.Descripcion;
            lblEstado.Text = ticket.Estado;

            lblClienteNombre.Text = ticket.Cliente.Nombre;
            lblClienteRut.Text = ticket.Cliente.Rut;
            lblClienteTelefono.Text = ticket.Cliente.Telefono;
            lblClienteEmail.Text = ticket.Cliente.Email;

            if (ticket.Cliente is Empresa empresa)
            {
                lblClienteRazonSocial.Text = empresa.RazonSocial;
                trRazonSocial.Visible = true;
            }
            else
            {
                trRazonSocial.Visible = false;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string ticketId = lblId.Text;
            if (!string.IsNullOrEmpty(ticketId))
            {
                Response.Redirect($"ActualizarTicket.aspx?id={ticketId}");
            }
        }
    }
}