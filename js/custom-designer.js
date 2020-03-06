$(function() {
    var header = $(".header");
    $(window).scroll(function() {    
        var scroll = $(window).scrollTop();
    
        if (scroll >= 200) {
            header.removeClass('header').addClass("header-sticky");
        } else {
            header.removeClass("header-sticky").addClass('header');
        }
    });
});

$(document).ready(function() {
  $("select").select2({
    allowClear: false,
    minimumResultsForSearch: Infinity
  });

  $(".city-list").select2({
	  	placeholder: 'City',
      allowClear: false,
		  minimumResultsForSearch: Infinity
  });

  $('.employees').click(function(){
    $(this).addClass("active");
    $('.employers').removeClass("active");
    $('#employees-tabs').show();
    $('#employers-tabs').hide();
  });
  $('.employers').click(function(){
    $(this).addClass("active");
    $('.employees').removeClass("active");
    $('#employers-tabs').show();
    $('#employees-tabs').hide();
  });

  $('#testimonial-slider').owlCarousel({
    loop: true,
    center: true,
    items: 5,
    margin: 0,
    nav: true,
    //autoplay: true,
    dots:false,
    autoplayTimeout: 8500,
    smartSpeed: 450,
    responsiveClass: true,
    responsive: {
      0: {
        items: 1
      },
      768: {
        items: 2
      },
      1170: {
        items: 5
      }
    }
  });
  $('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    responsiveClass: true,
    autoplay:true,
    autoplayHoverPause:true,
    autoplayTimeout:2000,
    responsive: {
      0: {
        items: 1,
        nav: true
      },
      600: {
        items: 1,
        nav: false
      },
      1000: {
        items: 1,
        nav: true,
        loop: false,
        margin: 20
      }
    }
  })

  // Post jobs js
  $('#step-n1').on('click', function() {
    $('#steps-1').slideUp(500);
    $('#steps-2').slideDown(500);
  });
  $('#step-n2').on('click', function() {
    $('#steps-2').slideUp(500);
    $('#steps-3').slideDown(500);
  });
  $('#step-n3').on('click', function() {
    $('#steps-3').slideUp(500);
    $('#steps-4').slideDown(500);
  });
  $('#step-n4').on('click', function() {
    $('#steps-4').slideUp(500);
    $('#steps-5').slideDown(500);
  });
  $('#step-b1').on('click', function() {
    $('#steps-1').slideDown(500);
    $('#steps-2').slideUp(500);
  });
  $('#step-b2').on('click', function() {
    $('#steps-2').slideDown(500);
    $('#steps-3').slideUp(500);
  });
  $('#step-b3').on('click', function() {
    $('#steps-3').slideDown(500);
    $('#steps-4').slideUp(500);
  });
  // $('#step-b4').on('click', function() {
  //   $('#steps-4').slideDown(500);
  //   $('#steps-5').slideUp(500);
  // });
  // Post jobs js end

});

$(document).ready(function(e) {
     $('#forgot-contain').hide(500);
     $('#forgot-pw').on('click', function() {

         $('#login-contain').slideUp(500);
         $('#forgot-contain').slideDown(500);

     });
     $('#backto-login').on('click', function() {
         $('#forgot-contain').slideUp(500);
         $('#login-contain').slideDown(500);
     });
 });

// $(window).on("load resize",function(){
//     var headerHeight = $('.after-login').height();
//     $('main').css('margin-top', headerHeight + 44);
// });