using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Http;
using System.Net.Http;

namespace Aeropuerto.Controllers
{
    public class PasajeroController : ApiController
    {
        [System.Web.Http.HttpPost]
        public IHttpActionResult Add()
        {
            using (Models.AeropuertoEntities1 db = new Models.AeropuertoEntities1())
            {
                var opasajero = new Models.Pasajero();
                opasajero.NombrePasajero = "Connor";
                opasajero.ApellidoPasajero = "LLoris";
                opasajero.Sexo = "Masculino";
                opasajero.Edad = 19;
                opasajero.estado = "soltero" ;

                db.Pasajero.Add(opasajero);
                db.SaveChanges();
            }
            return Ok("Su Pasajero ha sido registrado exitosamente");
        }
    }
}