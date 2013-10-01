$(document).ready(function(){
  $('.qrcode[rel=popover]').popover({
      html: true
    , trigger: 'hover'
    , placement: 'top'
    , title: '微信公众帐号: 大鱼旅行'
    , content: $('.popover_wrapper').html()
  });

})
