using Capa_logica.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto_PeCes
{
    public partial class ListarTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var tickets = TicketController.ReadAll();
                if (tickets.Count > 0)
                {
                    gvTickets.DataSource = tickets;
                    gvTickets.DataBind();
                }
                else
                {
                    lblNoTickets.Visible = true;
                    gvTickets.Visible = false;
                }
            }
        }

        protected void gvTickets_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VerDetalle")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = gvTickets.Rows[index];
                string ticketId = selectedRow.Cells[0].Text;
                Response.Redirect("DetalleTicket.aspx?id=" + ticketId);
            }
        }
    }
}