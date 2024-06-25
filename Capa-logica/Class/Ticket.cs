using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capa_de_Datos.Entites;

namespace Capa_logica.Class
{
    public class Ticket
    {
        public string Id { get; set; }
        public Cliente Cliente { get; set; }
        public string Producto { get; set; }
        public string Descripcion { get; set; }
        public string Estado { get; set; }
        private DateTime _createdAt { get; set; } = DateTime.Now;

        public DateTime GetCreatedAt()
        {
            return _createdAt;
        }
    }
}