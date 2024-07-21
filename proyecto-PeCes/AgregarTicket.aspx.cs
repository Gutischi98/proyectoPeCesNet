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

        protected void ValidateClienteNombre(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void ValidateProducto(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 10)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void ValidateDescripcion(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 10)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnCrearTicket_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Cliente cliente;
                string clienteId = Guid.NewGuid().ToString(); 

                if (ddlTipoCliente.SelectedValue == "Empresa")
                {
                    cliente = new Empresa
                    {
                        Id = clienteId,
                        Nombre = txtClienteNombre.Text,
                        Rut = txtClienteRut.Text,
                        Telefono = txtClienteTelefono.Text,
                        Email = txtClienteEmail.Text,
                        RazonSocial = txtClienteRazonSocial.Text
                    };
                }
                else
                {
                    cliente = new PersonaNatural
                    {
                        Id = clienteId,
                        Nombre = txtClienteNombre.Text,
                        Rut = txtClienteRut.Text,
                        Telefono = txtClienteTelefono.Text,
                        Email = txtClienteEmail.Text
                    };
                }

                Ticket nuevoTicket = new Ticket
                {
                    Id = Guid.NewGuid().ToString(), 
                    Cliente = cliente,
                    Producto = txtProducto.Text,
                    Descripcion = txtDescripcion.Text,
                    Estado = txtEstado.Text
                };

                string resultado = TicketController.Create(nuevoTicket);

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
}