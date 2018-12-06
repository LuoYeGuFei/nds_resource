$(document).ready(function(){

    $('a.rucaptcha-image-box').on( 'click', function() {
      var btn = $(this);
      var img = btn.find('img:first');
      var currentSrc = img.attr('src');
      img.attr('src', currentSrc.split('?')[0] + '?' + (new Date()).getTime());
      return false;
    });
});
//(function() {

  //// 验证码刷新
  //$(document).on('click', '.rucaptcha-image-box', function() {
      //var img = $(this).find('img:first');
      //currentSrc = img.attr('src');
      //img.attr('src', currentSrc.split('?')[0] + '?' + (new Date()).getTime());
      //return false;
  //})

 //})()
