def create_services

Service.destroy_all;

Service.create([
{
  service_name: "Lavacar",
  description: "Servicio de lavado de automoviles.",
  total_price: 1500
},
{
  service_name: "Jardineria",
  description: "Servicio de jardineria.",
  total_price: 2500
},
{
  service_name: "Limpieza domestica",
  description: "Servicio de limpieza domestica.",
  total_price: 3500
},
{
  service_name: "Peluqeria",
  description: "Servicio de peluqueria.",
  total_price: 500
},
])


end
