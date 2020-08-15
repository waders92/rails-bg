document.addEventListener("turbolinks:load", function()  {
  setTimeout(function() {
    $('.notifications').slideUp();
  }, 1000);
});