   jQuery(document).ready(function($) {
     var owl = $("#slider-carousel");
     owl.owlCarousel({
       items: 3,
       itemsDesktop: [1000, 3],
       itemsDesktopSmall: [900, 2],
       itemsTablet: [768, 1],
       itemsMobile: [480, 1],
       pagination: false,
	   navigation : false,
	   autoPlay: false
     });
     $(".next").click(function() {
       owl.trigger('owl.next');
     })
     $(".prev").click(function() {
       owl.trigger('owl.prev');
     })
   });


   jQuery(document).ready(function($) {
     var owl = $("#slider-map");
     owl.owlCarousel({
       items: 1,
       itemsDesktop: [1000, 1],
       itemsDesktopSmall: [900, 1],
       itemsTablet: [768, 1],
       itemsMobile: [480, 1],
       pagination: false,
     navigation : false,
     autoPlay: false
     });
     $(".next").click(function() {
       owl.trigger('owl.next');
     })
     $(".prev").click(function() {
       owl.trigger('owl.prev');
     })
   });


  // property details slider
// Open the Modal
function openModal() {
  document.getElementById('myModal').style.display = "block";
}

// Close the Modal
function closeModal() {
  document.getElementById('myModal').style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
