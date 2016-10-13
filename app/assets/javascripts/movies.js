$(function() {
 	$(".digits").countdown({
 		image: "digits.png",

 		format: "dd:hh:mm:ss",
    startTime: "00:15",
    timerEnd: function() { alert('end!!');
    window.location="/movies";
   }
 	// 	endTime: new Date(2013, 12, 2)
 	});
 });
