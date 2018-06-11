$(document).on('turbolinks:load', function() {

  //$('#notice').hide().slideDown(1000).delay(3000).slideUp();


  //select title to show show_content
  $('.content').hide();
  $('.title').click(function(){
    $(this).next().toggle(1000);
  })

});
