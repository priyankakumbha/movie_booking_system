// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function() {
calculateTotal();
  var bookSeat = function(seatId, seatNumber) {
    var postUrl = "/movies/" + movieId + "/tickets/" + ticketId + "/seats/" + seatId;
    $.ajax({
      url: postUrl,
      type: "PUT",
      dataType: "JSON",
      data: { seat: {seat_id: seatId, seat_number: seatNumber}}
    }).done(function(data) {
      seatIdSelectable = true;
      seatSelectable = false;
      console.log("seat_id:" + seatId);
      console.log("seat_number:" + seatNumber);
    });
  };

  var movieId = $("#table").attr("data-movie");
  var ticketId = $("#table").attr("data-ticket");
  var seatIdSelectable = true;
  var seatSelectable = false;
  $(".seats td").one("click", function() {
console.log("bye!!");

    if (seatIdSelectable) {
      seatSelectable = true;
      seatIdSelectable = false;
      var seatId = $(this).attr("id");
      $(this).css('background', 'red').attr("disabled", true);
      $("#table td").off();
      $("#table td").one("click", function() {
        if ($(this).hasClass("booked")){
          console.log("bye");
          return ;
        }
        if (seatSelectable) {
          var seatNumber = $(this).text();
          $(this).css("background", "green").attr("disabled", true);
          bookSeat(seatId, seatNumber);
        }
      });
    }
  });

  $( "#ticket_children" ).change(function() {
    calculateTotal();
  });

});

var calculateTotal= function(){
  // console.log("hi");
  var childrenTotal = parseInt($("#ticket_children").val());
  var studentTotal = parseInt($("#ticket_students").val());
  var adultTotal = parseInt( $("#ticket_adults").val());
  var total1 = childrenTotal * 10;
  var total2 = studentTotal * 12;
  var total3 = adultTotal * 15;
  var total = total1 + total2 + total3;
  $("#ticket_total").val(total);
  // console.log(total);
  // console.log($("#ticket_children").val());
};
// <!-- <td id="column"+i style="background","black"><%#= i %><%= j %></td> -->
//   <!-- $(this).css("background", "green").attr("disabled", true); -->
// <!-- <%#= i %><%#= j %> -->
