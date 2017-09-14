function Cambiar_equipo() {
  $("div.card").not(":has(div.card-icon)").css("cursor", "pointer").click(function (e) {
    e.preventDefault()
    let team_id = parseInt($(this).find("span:first-child").html());
    if (confirm("desea cambiar de equipo?") == true) {
      $.ajax({
        method: "POST",
        url: team_id,
        dataType: "script",
        timeout: 10000,
        beforeSend: function () {
          $("#respuesta").html("cargando..");
        },
        error: function (error) {
          $("#respuesta").html("error" + error)
        }

      })
    }

  });

}
var hoverTimeout;
var x, y;
function ver_detalles_team() {
  $(".card").hover(function (event) {
    var carta = this;
    x = event.offsetX;
    y = event.offsetY;
    console.log(event.offsetX + " " + event.offsetY)
    hoverTimeout = setTimeout(function () {
      let team_id = parseInt($(carta).find("span:first-child").html());
      $.ajax({
        method: "POST",
        url: "/team/" + team_id,
        dataType: "JSON",
        timeout: 1000,
        error: function (error) {
          console.log(error);
        },
        success: function (res) {
          $(carta).append(plantilla_teams(res.id, res.plays_lose, res.plays_win, x, y))
        }
      })
    }, 2000);
  }, function () {
    clearTimeout(hoverTimeout);
    if ($(this).has("div.card-detalle")) {
      $(this).find("div.card-detalle").remove();
    }
  })
}
function plantilla_teams(id, plays_lose, plays_win, x, y) {
  var plantilla = `
<div class="card-detalle col-xs-12 " style="top:${y}px;left:${x}px">
<div class="row middle-xs">
<div class="col-xs-4">
<img src="http://lorempixel.com/400/200/sports" alt="imagen" class="circle responsive-img"/>
</div>
<div class="col-xs-8">
<ul>
<li>${id}</li>
<li>Numero de juegos perdidos: ${plays_lose}</li>
<li>Numero de juegos ganados: ${plays_win}</li>
</ul>
</div>
</div>
</div> 
`
  return plantilla;
}
$(document).ready(function () {
  ver_detalles_team();
  Cambiar_equipo();
})