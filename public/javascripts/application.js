
$(function(){
  $('.post').hover(
    function(){ 
      $(this).find('.edit, .edit a').fadeIn();
      $('#comments').html($(this).attr('data-comment')).fadeIn();
    }, 
    function(){ 
      $(this).find('.edit, .edit a').fadeOut();
      $('#comments').fadeOut();
    }
  ) 
  })
