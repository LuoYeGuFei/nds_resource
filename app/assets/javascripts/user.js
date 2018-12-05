$(document).ready(function(){

    $('a.rucaptcha-image-box').on( 'click', function() {
      var btn = $(this);
      var img = btn.find('img:first');
      var currentSrc = img.attr('src');
      img.attr('src', currentSrc.split('?')[0] + '?' + (new Date()).getTime());
      return false;
    });
});
