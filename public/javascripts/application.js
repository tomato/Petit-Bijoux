
$(document).ready(function(){
  $('.post').hover(
    function(){ $(this).find('.edit, .edit a').fadeIn()}, 
    function(){ $(this).find('.edit, .edit a').fadeOut()}
  ) 
  })
