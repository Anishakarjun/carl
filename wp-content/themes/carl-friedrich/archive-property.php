<?php get_header(); ?>
     
  
<!--    properties-->
<div class="sliding-img-slider">
	<div class="row">
    <?php $hl = false; $nhl=false;
    if (have_posts()) { ?>
    <?php while (have_posts()) { the_post(); ?>
    <?php if (get_field('highlight_property')=='yes') { 
      $hl = true; ?>
    <div class="col-md-8 col-xs-12">
      <div class="wow fadeInUp">
        <a href="<?php the_permalink();?>">
	        <div class="sliding-img">
            <img class="img-responsive" src="<?php the_field('property_display_image');?>"/>
            <div id="overlay5">
              <p class="fa fa-plus img-icon"></p>
            </div>
          </div>
        </a>
        <div class="sliding-img-cpt">
          <h2><?php the_title(); if(get_field('square_meters')){ ?><span> <?php the_field('square_meters');?></span><?php } ?></h2>
          <a href="<?php the_permalink();?>">See the property  »</a>
        </div>
      </div>
    </div>
    <?php }else{ ?>

  <?php if($hl==true){ ?>
    <div class="col-md-4 col-xs-12">

      <div  class="wow fadeInUp">
        <a href="<?php the_permalink();?>">
	        <div class="sliding-img">
            <img class="img-responsive" src="<?php the_field('property_display_image');?>" />
            <div id="overlay5">
              <p class="fa fa-plus img-icon"></p>
            </div>
          </div>
        </a>
        <div class="sliding-img-cpt">
          <h2><?php the_title(); if(get_field('square_meters')){ ?><span> <?php the_field('square_meters');?></span><?php } ?></h2>
          <a href="<?php the_permalink();?>">See the property  »</a>
        </div>
      </div>
    <!-- </div> -->

      <?php $hl=false; $nhl=true; }else{ ?>
      <?php if($nhl==false){ ?>
      <div class="col-md-4 col-xs-12">
        <?php } $nhl=false;?>
        <div class="wow fadeInUp">
          <a href="<?php the_permalink();?>">
            <div class="sliding-img">
              <img class="img-responsive" src="<?php the_field('property_display_image');?>" />
              <div id="overlay5">
                <p class="fa fa-plus img-icon"></p>
              </div>
            </div>
          </a>
          <div class="sliding-img-cpt">
            <h2><?php the_title(); if(get_field('square_meters')){ ?><span> <?php the_field('square_meters');?></span><?php } ?></h2>
            <a href="<?php the_permalink();?>">See the property  »</a>
          </div>
        </div>
          </div>
 <?php } } } } ?>
  </div>
</div>
     
<?php get_footer(); ?>