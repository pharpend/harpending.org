$('table').each(function(){
  $(this).addClass("table");
  $(this).wrap("<div class='panel panel-default'>");
})
$('img').each(function(){
  $(this).addClass("img-responsive center-block");
})
