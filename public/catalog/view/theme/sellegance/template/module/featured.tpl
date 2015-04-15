<?php $this->language->load('module/sellegance'); ?>

<?php if($this->config->get('sellegance_status')== 1 && $this->config->get('sellegance_featured_carousel') != '') { ?>

	<section id="featured-products" class="product-slider top-arrows" <?php if ($this->language->get('direction')=='rtl') echo 'style="direction:ltr;"'?>>

		<div class="contentset center">
			<h4 class="inner"><span><?php echo $heading_title; ?></span></h4>
		</div>

		<div class="flexslider">

			<ul class="slides">

			<?php foreach ($products as $product) {  ?>
				
				<li>
					<div class="inner">

						<?php if ($product['price'] && $product['special']) { ?>
						<span class="onsale"><?php echo $this->language->get('text_onsale'); ?></span>
						<?php } ?>

						<?php if ($product['thumb']) { ?>
						<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
						<?php } ?>

						<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>

						<?php if ($product['price']) { ?>
						<div class="price">
						<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
						<?php } else { ?>
							<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
						</div>
						<?php } ?>

						<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

						<?php if ($product['rating']) { ?>
						<div class="rating"><img src="catalog/view/theme/sellegance/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
						<?php } ?>

					</div> <!-- .inner -->
				</li>

			<?php } ?>

			</ul>

	  </div>

	</section> <!-- .es-carousel-wrapper -->

	<script type="text/javascript">

		$(document).ready(function() {
			$('#featured-products .flexslider').flexslider({
				animation: "slide",
				animationLoop: true,
				itemWidth: 182,
				itemMargin: 3,
				minItems: 1,
				maxItems: 6,
				<?php if($this->config->get('sellegance_carousel_autoplay') == 0) echo "slideshow: false,"; ?>
				slideshowSpeed: 4600
			  });
		});

	</script>

<?php } else { ?>

	<section id="featured-products" class="box">

		<div class="contentset center">
			<h4 class="inner"><span><?php echo $heading_title; ?></span></h4>
		</div>

		<div class="box-content">

			<div class="product-box">
				
				<?php foreach ($products as $product) { ?>

				<div class="grid-box">

					<div class="inner">

						<?php if ($product['price'] && $product['special']) { ?>
						<span class="onsale"><?php echo $this->language->get('text_onsale'); ?></span>
						<?php } ?>

						<?php if ($product['thumb']) { ?>
						<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
						<?php } ?>

						<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>						

						<?php if ($product['price']) { ?>
						<div class="price">
						<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
						<?php } else { ?>
							<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
						</div>
						<?php } ?>

						<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

						<?php if ($product['rating']) { ?>
						<div class="rating"><img src="catalog/view/theme/sellegance/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
						<?php } ?>

					</div> <!-- .inner -->

				</div>

				<?php } ?>

			</div>

		</div>

	</section>

<?php } ?>