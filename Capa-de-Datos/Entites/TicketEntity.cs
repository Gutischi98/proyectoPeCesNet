using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Capa_de_Datos.Entites
{
    public class TicketEntity
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public ClienteEntity Cliente { get; set; } 
        public string Producto { get; set; }
        public string Descripcion { get; set; }
        public string Estado { get; set; }
        private DateTime _createAt {  get; set; } = DateTime.Now;

        public DateTime GetCreatedAt()
        {
            return _createAt;
        }
    }
}