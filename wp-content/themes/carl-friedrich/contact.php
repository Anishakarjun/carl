<?php
/*
* Template Name: Contact Us Template
*/
get_header(); ?>
<!-- contact -->

	<div class="container-contact100">
		<div class="wrap-contact100">
			<?php echo do_shortcode('[contact-form-7 id="32" title="Contact Us Form"]');?>

			<div class="contact100-more flex-col-c-m wow fadeInRight" style="background-image: url('<?php echo get_template_directory_uri();?>/assets/img/img-con.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Address
						</span>

						<span class="txt2">
							
<?php bloginfo('name'); ?> <br>
<?php if (function_exists('get_field') && (get_field('address','option'))) { ?>
<?php echo the_field('address','option');?><br><br>
<?php } ?>
							<?php if (function_exists('get_field') && (get_field('map_url','option'))) { ?>
						<iframe src="<?php echo the_field('map_url','option');?>" width="95%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
						<?php } ?>
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Lets Talk
						</span>

						<span class="txt3">
						<?php if (function_exists('get_field') && (get_field('phone','option'))) { ?>	
<?php echo the_field('phone','option');?>
<?php } ?>
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							General Support
						</span>

						<span class="txt3">

							<?php if (function_exists('get_field') && (get_field('email','option'))) { ?>	
<?php echo the_field('email','option');?>
<?php } ?>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>

<?php get_footer(); ?>