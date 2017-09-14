$(document).ready(function() {
  $('.type-it-js').each(function() {
    let text = $(this).html();
    $(this).html('');
    $(this).typed({strings: [text], typeSpeed: 100});
  });
});
