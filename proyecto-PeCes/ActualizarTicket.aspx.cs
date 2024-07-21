using Capa_logica.Class;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_PeCes
{
    public partial class ActualizarTicket : System.Web.UI.Page
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
                        CargarDatos(ticket);
                    }
                    else
                    {
                        Response.Write("Error: Ticket no encontrado");
                    }
                }
            }
        }

        private void CargarDatos(Ticket ticket)
        {
            lblId.Text = ticket.Id;
            txtProducto.Text = ticket.Producto;
            txtDescripcion.Text = ticket.Descripcion;
            lblEstado.Text = ticket.Estado;

            lblClienteNombre.Text = ticket.Cliente.Nombre;
            lblClienteRut.Text = ticket.Cliente.Rut;
            txtClienteTelefono.Text = ticket.Cliente.Telefono;
            txtClienteEmail.Text = ticket.Cliente.Email;

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

        protected void btnActualizarTicket_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string ticketId = Request.QueryString["id"];
                string telefono = txtClienteTelefono.Text;
                string email = txtClienteEmail.Text;
                string producto = txtProducto.Text;
                string descripcion = txtDescripcion.Text;

                string resultado = TicketController.Update(ticketId, producto, descripcion, null, email, telefono);
                if (resultado.Contains("Éxito"))
                {
                    Response.Redirect("ListarTickets.aspx?mensaje=El ticket fue actualizado con éxito");
                }
                else
                {
                    Response.Redirect("ListarTickets.aspx?mensaje=El ticket no pudo ser actualizado");
                }
            }
        }
    }
}
