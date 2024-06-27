using Capa_logica.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_PeCes
{
    public partial class AgregarTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                trRazonSocial.Visible = false;
            }
        }

        protected void ddlTipoCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            trRazonSocial.Visible = ddlTipoCliente.SelectedValue == "2";
        }

        protected void btnAgregarTicket_Click(object sender, EventArgs e)
        {
            Cliente cliente;
            if (ddlTipoCliente.SelectedValue == "2")
            {
                cliente = new Empresa
                {
                    Id = Guid.NewGuid().ToString(),
                    Nombre = txtNombre.Text,
                    Rut = txtRut.Text,
                    Telefono = txtTelefono.Text,
                    Email = txtEmail.Text,
                    RazonSocial = txtRazonSocial.Text
                };
            }
            else
            {
                cliente = new PersonaNatural
                {
                    Id = Guid.NewGuid().ToString(),
                    Nombre = txtNombre.Text,
                    Rut = txtRut.Text,
                    Telefono = txtTelefono.Text,
                    Email = txtEmail.Text
                };
            }

            var ticket = new Ticket
            {
                Id = Guid.NewGuid().ToString(),
                Cliente = cliente,
                Producto = txtProducto.Text,
                Descripcion = txtDescripcion.Text,
                Estado = txtEstado.Text
            };

            string resultado = TicketController.Create(ticket);
            if (resultado.Contains("Éxito"))
            {
                Response.Redirect("ListarTickets.aspx?mensaje=El ticket fue agregado con éxito");
            }
            else
            {
                Response.Redirect("ListarTickets.aspx?mensaje=El ticket no pudo ser agregado");
            }
        }
    }
}