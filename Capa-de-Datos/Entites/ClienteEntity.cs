using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Capa_de_Datos.Entites
{
    public class ClienteEntity
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string Nombre { get; set; }
        public string Rut {  get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
    }
}