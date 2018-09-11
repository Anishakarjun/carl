<?php get_header();?>

<?php $i=1; if( have_rows('property_carousels') ){ ?>
<!--slider -->
<div class="slider-property">
  <div  id="example-19" class="ma5slider anim-horizontal horizontal-dots horizontal-navs center-dots inside-dots">
    <div class="slides">
      <?php while ( have_rows('property_carousels') ) { the_row(); ?>
        <a href="#slide-<?php echo $i;?>"><img src="<?php the_sub_field('property_image'); ?>" alt=""></a>
      <?php $i++; } ?>

    </div>
  </div>
</div>
<?php } ?>

<!-- proepry details -->
<div class="container">
  <div class="col-md-8 col-xs-12 col-sm-12  wow fadeInRight">
    <div class="property-details">
      <h1>Short description of the property</h1>
      <h2><?php the_title();?></h2>
      <?php if (function_exists('get_field')) { ?>
<?php if(get_field('short_description')) { ?>
      <p><?php the_field('short_description');?></p>
      <?php } } ?>

      <!-- map -->
      <?php if( have_rows('floor_plans') ){ ?>

      <div class="slider-map">
        <div class="row">
          <div id="slider-map" class="owl-carousel">
            <?php while ( have_rows('floor_plans') ) { the_row(); ?>
              <div class="item">    
                <img class="img-responsive" src="<?php the_sub_field('floor_plan_image'); ?>"/>
              </div>
            <?php } ?>
          </div>
        </div>

        <a class="grayl prev">&#60;</a>
        <a class="grayr next">&#62;</a>
      </div>
      <?php } ?>

      <!-- map end -->
      <?php if (function_exists('get_field')) { ?>
<?php if(get_field('description_floor_plans')) { ?>
      <p class="two-coloumn">
        <?php the_field('description_floor_plans');?>
      </p>
      <?php } } ?>
    </div>
  </div>


  <div class="col-md-4 col-xs-12 col-sm-12  wow fadeInLeft">
    <?php if( have_rows('specifications') ){ ?>
    <div class="specifications">
      <h1>Specifications</h1>
      <div class="clearfix"></div>
      <table cellpadding="0" cellspacing="0" width="100%" >
        <?php while ( have_rows('specifications') ) { the_row(); ?>
          <tr>
            <td>
              <h1>
                <?php the_sub_field('specification_title'); ?>
              </h1>
            </td>

            <td>
              <h2><?php the_sub_field('value'); ?></h2>
            </td>
          </tr>
        <?php } ?>
      </table>
    </div>
  <?php } ?>
<!-- downlalod buttern -->

<?php if (function_exists('get_field')) { ?>
<?php if(get_field('broucher')) { ?>
<a href="<?php the_field('broucher');?>"><div class="downlaodb"><i class="fa fa-download"></i> Download the Broucher </div></a>
<?php } } ?>
<div class="clearfix"> </div>


<div class="mail">
<h1>Contact Us</h1>
<div class="mailform">
<?php echo do_shortcode('[contact-form-7 id="65" title="Contact Form Property Page"]');?>
</div>
</div>

      </div>
     
      </div>

   <!-- gallery -->
<?php $j=1; if( have_rows('image_gallery') ){ ?>
    <div class="container wow fadeInUp">
      <div class="">
<?php while ( have_rows('image_gallery') ) { the_row(); ?>
        <div class="col-md-4 col-xs-12">
          <a onclick="openModal();currentSlide(<?php echo $j;?>)">
            <div>  
              <div class="sliding-img-pro">
                <img class="img-responsive" src="<?php the_sub_field('property_gallery'); ?>"/>
                <div id="overlay5-pro">
                  <div class="img-title-pro">
                    +5 More Photos
                  </div>
                  <img src="<?php echo get_template_directory_uri();?>/assets/img/cf-mark.png" class="img-icon-pro-p"/>
                </div>
              </div>  
            </div>
          </a>
        </div>
<?php $j++; } ?>
    </div>
    </div>


    <!-- The Modal/Lightbox -->
    <div id="myModal" class="modal">
      <span class="close1 cursor" onclick="closeModal()">&times;</span>
      <div class="modal-content">
        <?php while ( have_rows('image_gallery') ) { the_row(); ?>
          <div class="mySlides">
            <img src="<?php the_sub_field('property_gallery'); ?>" style="width:100%">
          </div>
        <?php } ?>
        <!-- Next/previous controls -->
        <a class="prev1" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next1" onclick="plusSlides(1)">&#10095;</a>

        <!-- Caption text -->
      </div>
    </div>
<?php } ?> 

    <!-- map -->
    <?php if (function_exists('get_field')) { ?>
<?php if(get_field('property_map_url')) { ?>
  <div class="map wow zoomInUp">
    <iframe src="<?php the_field('property_map_url');?>" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
  </div>
<?php } } ?>

<?php get_footer(); ?>