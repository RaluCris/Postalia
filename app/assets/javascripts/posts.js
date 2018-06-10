$(document).on('turbolinks:load', function() {

  $('#notice').hide().slideDown(1000).delay(3000).slideUp();


  $('.spoiler').on('click', 'button', function(event){
    $(this).prev().show();
    $(this).hide();
  });
  // Create the "Reveal Spoiler" button
  const $button = $('<button>Reveal Spoiler</button>');
  //Append to web page
  $('.spoiler').append($button);

  //Hide the spoiler text
  $('.spoiler span').hide();


  //select title to show show_content
  $('.title').click(function(){
    $('.show_content').show();
  })
});
