const buttonSubmit = document.querySelector(".ingresa-celular");
const phoneForm = document.querySelector("#phoneForm");

phoneForm.addEventListener("submit", (e) => {
  e.preventDefault();
  const phoneData = {
    imei: document.querySelector("#imei").value,
    marca: document.querySelector("#marca").value,
    modelo: document.querySelector("#modelo").value,
  };
  const newTelefono = new Telefono(
    phoneData.imei,
    phoneData.marca,
    phoneData.modelo
  );

  const ticketData = {
    telefono: newTelefono,
    diagnostico: document.querySelector("#diagnostico").value,
    porcentaje: document.querySelector("#abono").value,
    montoFinal: document.querySelector("#montoFinal").value,
    cliente: document.querySelector("#cliente").value,
  };
  const newTicket = new Ticket(
    ticketData.telefono,
    ticketData.diagnostico,
    ticketData.porcentaje,
    ticketData.montoFinal,
    ticketData.cliente
  );
  console.log("🚀 ~ phoneForm.addEventListener ~ newTicker:", newTicket);
  const authorizationValue = document.querySelector("#autorizacion").value;

  if (authorizationValue == "si") {
    newTicket.autorizar(1);
  }

  console.log("hola");
});
