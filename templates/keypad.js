function clear(){
	$('#passwordKeypad').val("");
}

function enterNumpad(number){
   var size = $('#passwordKeypad').val().length;
   if (parseInt(size) <= 3){
       $('#passwordKeypad').val($('#passwordKeypad').val()+number);
   }
}
