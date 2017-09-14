$(function(){
  $('.subscribe-link').on('click', function() {
    var subscription_input = $(this).siblings('input.subscription-field');
    subscription_input.removeClass('hidden');
    subscription_input.focus();
    $(this).addClass('hidden');
  });

  $('input.subscription-field').on('focusout', function() {
    var subscribe_link = $(this).siblings('a.subscribe-link');
    subscribe_link.removeClass('hidden');
    subscribe_link.focus();
    $(this).addClass('hidden');
  });
});
