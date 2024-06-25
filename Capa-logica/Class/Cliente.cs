using System;
using System.Collections.Generic;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;
using Capa_de_Datos.Entites;

namespace Capa_logica.Class
{
    public class Cliente
    {
        public string Id { get; set; }
        public string Nombre { get; set; }
        public string Rut {  get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
    }
}