<?php
/*
* Template Name: About Us Template
*/
get_header(); ?>
<!--    properties-->
<div class="container">
	<div class="about-us-page">
		<div class="col-md-5 col-sm-5">
			<div class="wow fadeInLeft">
				<img src="<?php echo get_template_directory_uri();?>/assets/img/about.jpg" class="img img-responsive" />
			</div>
		</div>
		<div class="col-md-7 col-sm-7 wow fadeInRight">
			<div class="box">
				<?php if(have_posts()){ 
					while(have_posts()){ 
						the_post();?> 
						<?php the_content();?>
				<?php } } ?>
			</div>
		</div>
	</div>
</div>
<?php get_footer(); ?>