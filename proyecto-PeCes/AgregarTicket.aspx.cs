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
            if (ddlTipoCliente.SelectedValue == "Empresa")
            {
                trRazonSocial.Visible = true;
            }
            else
            {
                trRazonSocial.Visible = false;
            }
        }

        protected void btnAgregarTicket_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = txtNombre.Text;
                string rut = txtRut.Text;
                string telefono = txtTelefono.Text;
                string email = txtEmail.Text;
                string tipoCliente = ddlTipoCliente.SelectedValue;
                string razonSocial = txtRazonSocial.Text;
                string producto = txtProducto.Text;
                string descripcion = txtDescripcion.Text;

                Cliente cliente;
                if (tipoCliente == "Empresa")
                {
                    cliente = new Empresa
                    {
                        Id = Guid.NewGuid().ToString(),
                        Nombre = nombre,
                        Rut = rut,
                        Telefono = telefono,
                        Email = email,
                        RazonSocial = razonSocial
                    };
                }
                else
                {
                    cliente = new PersonaNatural
                    {
                        Id = Guid.NewGuid().ToString(),
                        Nombre = nombre,
                        Rut = rut,
                        Telefono = telefono,
                        Email = email
                    };
                }

                Ticket ticket = new Ticket
                {
                    Cliente = cliente,
                    Producto = producto,
                    Descripcion = descripcion,
                    Estado = "Pendiente"
                };

                string resultado = TicketController.Create(ticket);
                if (resultado == "Éxito")
                {
                    Response.Redirect("ListarTickets.aspx?mensaje=El ticket fue agregado con éxito");
                }
                else
                {
                    Response.Write("El ticket no pudo ser agregado");
                }
            }
        }
    }
}