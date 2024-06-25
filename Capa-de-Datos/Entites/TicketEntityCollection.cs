using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Capa_de_Datos.Entites
{
    public class TicketEntityCollection
    {
        private static List<TicketEntity> _listadoTickets = new List<TicketEntity>();
        
        public static List<TicketEntity> ListadoTicket
        {
            get
            {
                return _listadoTickets;
            }
            set
            {
                _listadoTickets = value;
            }
        }
    }

}