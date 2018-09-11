<?php
/*
* Template Name: About Czech Republic Template
*/
get_header(); ?>

<!--    properties-->
 <div class="container">

<div class="about-us-cz">
    <div class="col-md-5 col-sm-5 hidden-sm hidden-md hidden-lg">
<div class="wow fadeInLeft">
<img src="<?php echo get_template_directory_uri();?>/assets/img/about-cz.jpg" class="img img-responsive" />
</div>
</div>
    

<div class="col-md-7 col-sm-7 wow fadeInLeft" style="z-index: 1;">
<div class="box">
<?php if(have_posts()){ 
					while(have_posts()){ 
						the_post();?> 
						<?php the_content();?>
				<?php } } ?>
 
</div>
</div>
    
    <div class="col-md-5 col-sm-5 hidden-xs">
<div class="wow fadeInRight">
<img src="<?php echo get_template_directory_uri();?>/assets/img/about-cz.jpg" class="img img-responsive" />
</div>
</div>

</div>

 </div>
<?php get_footer(); ?>