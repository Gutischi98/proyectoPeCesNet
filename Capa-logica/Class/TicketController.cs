using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capa_de_Datos.Entites;

namespace Capa_logica.Class
{
    public class TicketController
    {
        public static string Create(Ticket ticket)
        {
            ClienteEntity clienteEntity;

            if (ticket.Cliente is Empresa empresa)
            {
                clienteEntity = new EmpresaEntity
                {
                    Id = empresa.Id,
                    Nombre = empresa.Nombre,
                    Rut = empresa.Rut,
                    Telefono = empresa.Telefono,
                    Email = empresa.Email,
                    RazonSocial = empresa.RazonSocial
                };
            }
            else if (ticket.Cliente is PersonaNatural personaNatural)
            {
                clienteEntity = new ClienteEntity
                {
                    Id = personaNatural.Id,
                    Nombre = personaNatural.Nombre,
                    Rut = personaNatural.Rut,
                    Telefono = personaNatural.Telefono,
                    Email = personaNatural.Email
                };
            }
            else
            {
                return "Error: Cliente no válido";
            }

            var ticketEntity = new TicketEntity
            {
                Id = ticket.Id,
                Cliente = clienteEntity,
                Producto = ticket.Producto,
                Descripcion = ticket.Descripcion,
                Estado = ticket.Estado
            };

            TicketEntityCollection.ListadoTicket.Add(ticketEntity);
            return "Éxito: Ticket creado";
        }

        public static Ticket Read(string id)
        {
            var ticketEntity = TicketEntityCollection.ListadoTicket.Find(t => t.Id == id);

            if (ticketEntity == null)
                return null;

            Cliente cliente;

            if (ticketEntity.Cliente is EmpresaEntity empresaEntity)
            {
                cliente = new Empresa
                {
                    Id = empresaEntity.Id,
                    Nombre = empresaEntity.Nombre,
                    Rut = empresaEntity.Rut,
                    Telefono = empresaEntity.Telefono,
                    Email = empresaEntity.Email,
                    RazonSocial = empresaEntity.RazonSocial
                };
            }
            else
            {
                var clienteEntity = ticketEntity.Cliente;
                cliente = new PersonaNatural
                {
                    Id = clienteEntity.Id,
                    Nombre = clienteEntity.Nombre,
                    Rut = clienteEntity.Rut,
                    Telefono = clienteEntity.Telefono,
                    Email = clienteEntity.Email
                };
            }

            return new Ticket
            {
                Id = ticketEntity.Id,
                Cliente = cliente,
                Producto = ticketEntity.Producto,
                Descripcion = ticketEntity.Descripcion,
                Estado = ticketEntity.Estado
            };
        }

        public static string Update(string id, string producto, string descripcion, string estado, string email, string telefono)
        {
            var ticketEntity = TicketEntityCollection.ListadoTicket.Find(t => t.Id == id);

            if (ticketEntity == null)
                return "Error: Ticket no encontrado";

            ticketEntity.Producto = producto;
            ticketEntity.Descripcion = descripcion;
            ticketEntity.Estado = estado;
            ticketEntity.Cliente.Email = email;
            ticketEntity.Cliente.Telefono = telefono;

            return "Éxito: Ticket actualizado";
        }

        public static string Delete(string id)
        {
            var ticketEntity = TicketEntityCollection.ListadoTicket.Find(t => t.Id == id);

            if (ticketEntity == null)
                return "Error: Ticket no encontrado";

            TicketEntityCollection.ListadoTicket.Remove(ticketEntity);
            return "Éxito: Ticket eliminado";
        }

        public static List<Ticket> ReadAll()
        {
            var tickets = new List<Ticket>();

            foreach (var ticketEntity in TicketEntityCollection.ListadoTicket)
            {
                Cliente cliente;

                if (ticketEntity.Cliente is EmpresaEntity empresaEntity)
                {
                    cliente = new Empresa
                    {
                        Id = empresaEntity.Id,
                        Nombre = empresaEntity.Nombre,
                        Rut = empresaEntity.Rut,
                        Telefono = empresaEntity.Telefono,
                        Email = empresaEntity.Email,
                        RazonSocial = empresaEntity.RazonSocial
                    };
                }
                else
                {
                    var clienteEntity = ticketEntity.Cliente;
                    cliente = new PersonaNatural
                    {
                        Id = clienteEntity.Id,
                        Nombre = clienteEntity.Nombre,
                        Rut = clienteEntity.Rut,
                        Telefono = clienteEntity.Telefono,
                        Email = clienteEntity.Email
                    };
                }

                tickets.Add(new Ticket
                {
                    Id = ticketEntity.Id,
                    Cliente = cliente,
                    Producto = ticketEntity.Producto,
                    Descripcion = ticketEntity.Descripcion, 
                    Estado = ticketEntity.Estado
                });
            }

            return tickets;
        }

        public static List<Ticket> Search(string searchTerm)
        {
            var tickets = new List<Ticket>();

            var filteredTickets = TicketEntityCollection.ListadoTicket
                .Where(t => t.Cliente.Nombre.Contains(searchTerm) || t.Cliente.Rut.Contains(searchTerm) || t.Estado.Contains(searchTerm))
                .ToList();

            foreach (var ticketEntity in filteredTickets)
            {
                Cliente cliente;

                if (ticketEntity.Cliente is EmpresaEntity empresaEntity)
                {
                    cliente = new Empresa
                    {
                        Id = empresaEntity.Id,
                        Nombre = empresaEntity.Nombre,
                        Rut = empresaEntity.Rut,
                        Telefono = empresaEntity.Telefono,
                        Email = empresaEntity.Email,
                        RazonSocial = empresaEntity.RazonSocial
                    };
                }
                else
                {
                    var clienteEntity = ticketEntity.Cliente;
                    cliente = new PersonaNatural
                    {
                        Id = clienteEntity.Id,
                        Nombre = clienteEntity.Nombre,
                        Rut = clienteEntity.Rut,
                        Telefono = clienteEntity.Telefono,
                        Email = clienteEntity.Email
                    };
                }

                tickets.Add(new Ticket
                {
                    Id = ticketEntity.Id,
                    Cliente = cliente,
                    Producto = ticketEntity.Producto,
                    Descripcion = ticketEntity.Descripcion,
                    Estado = ticketEntity.Estado
                });
            }

            return tickets;
        }
    }
}