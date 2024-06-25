using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capa_de_Datos.Entites;

namespace Capa_logica.Class
{
    public class Empresa : Cliente
    {
        public string RazonSocial { get; set; }
    }
}