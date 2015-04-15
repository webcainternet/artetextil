					</div> <!-- .container-inner -->

				</div> <!-- .container -->

			</div> <!-- .centralbox -->
		
		</section> <!-- #content_wrapper -->

		<footer id="footer">

			<div class="container">

				<div class="row">

					<div class="column col-sm-2">
						<h3 class="header"><?php echo $text_information; ?></h3>
						<ul class="content">
							<?php $i=1; foreach ($informations as $information) { ?>
							<li id="inf<?php echo $i;?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							<?php $i++;	} ?>
						</ul>
					</div>

					<div class="column col-sm-2">
						<h3 class="header"><?php echo $text_service; ?></h3>
						<ul class="content">
							<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
							<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
							<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						</ul>
					</div>

					<div class="column col-sm-2">
						<h3 class="header"><?php echo $text_extra; ?></h3>
							<ul class="content">
								<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
								<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
								<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
								<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
							</ul>
					</div>

					<div class="column col-sm-2">
						<h3 class="header"><?php echo $text_account; ?></h3>
							<ul class="content">
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li class="wishlist-link"><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
								<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
							</ul>
					</div>

					<div class="col-sm-4 contact">

						<?php if($this->config->get('sellegance_status')== 1) { ?>
						
							<div class="social">

								<?php if(($this->config->get('sellegance_facebook_page') != '') && ($this->config->get('sellegance_facebook_icon') == 1)) { ?>
									<a href="https://facebook.com/<?php echo $this->config->get('sellegance_facebook_page'); ?>" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/facebook.png" alt="Facebook" title="Facebook"></a>
								<?php } ?>
								<?php if($this->config->get('sellegance_twitter_username') != '') { ?>
									<a href="https://twitter.com/#!/<?php echo $this->config->get('sellegance_twitter_username'); ?>" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/twitter.png" alt="Twitter" title="Twitter">
								</a>
								<?php } ?>
								<?php if($this->config->get('sellegance_youtube_username') != '') { ?>
									<a href="https://youtube.com/user/<?php echo $this->config->get('sellegance_youtube_username'); ?>" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/youtube.png" alt="YouTube" title="YouTube">
								</a>
								<?php } ?>
								<?php if($this->config->get('sellegance_gplus_id') != '') { ?>
									<a href="https://plus.google.com/u/0/<?php echo $this->config->get('sellegance_gplus_id'); ?>" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/gplus.png" alt="Google+" title="Google+">
								</a>
								<?php } ?>
								<?php if($this->config->get('sellegance_pinterest_id') != '') { ?>
									<a href="https://pinterest.com/<?php echo $this->config->get('sellegance_pinterest_id'); ?>" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/pinterest.png" alt="Pinterest" title="Pinterest">
								</a>
								<?php } ?>
								<?php if($this->config->get('sellegance_instagram_username') != '') { ?>
									<a href="https://instagram.com/<?php echo $this->config->get('sellegance_instagram_username'); ?>" target="_blank" title="Instagram" class="tooltp" rel="tooltip" >
									<img src="catalog/view/theme/sellegance/images/icons/instagram.png" alt="Instagram" ></a>
								<?php } ?>
								<?php if($this->config->get('sellegance_tumblr_username') != '') { ?>
									<a href="http://<?php echo $this->config->get('sellegance_tumblr_username'); ?>.tumblr.com" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/tumblr.png" alt="Tumblr" title="Tumblr">
								</a>
								<?php } ?>
								<?php if($this->config->get('sellegance_skype_username') != '') { ?>
									<a href="skype:<?php echo $this->config->get('sellegance_skype_username'); ?>?call" target="_blank">
									<img src="catalog/view/theme/sellegance/images/icons/skype.png" alt="Skype Me!" title="Skype Me!">
								</a>
								<?php } ?>
								
							</div>

							<?php if($this->config->get('sellegance_footer_info_text') != '') { ?>
								<div class="info">
									<?php echo html_entity_decode($this->config->get('sellegance_footer_info_text'), ENT_QUOTES, 'UTF-8');?>
								</div>
							<?php } ?>

							<?php if(($this->config->get('sellegance_facebook_page') != '') && ($this->config->get('sellegance_facebook_button') == 1)) { ?>
								
								<div id="fb-root"></div>
								<script>(function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0];
									if (d.getElementById(id)) return;
									js = d.createElement(s); js.id = id;
									js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=147552342043457";
									fjs.parentNode.insertBefore(js, fjs);
								}(document, 'script', 'facebook-jssdk'));</script>

								<div class="fb-like-box" data-href="https://www.facebook.com/<?php echo $this->config->get('sellegance_facebook_page'); ?>" data-width="240" data-height="80" data-color-scheme="light" data-show-faces="false" data-border-color="#FFF" data-stream="false" data-header="false"></div>

							<?php } ?>

						<?php } ?>

					</div>

				</div> <!-- .row -->

			</div> <!-- .container -->

		</footer> <!-- #footer -->

		<footer id="footend">

			<div class="container">

				<div class="row">

				<?php if($this->config->get('sellegance_status')== 1) { ?>
					<?php if($this->config->get('sellegance_copyright') != '') { ?>
						<div id="copy"><?php echo html_entity_decode($this->config->get('sellegance_copyright'), ENT_QUOTES, 'UTF-8'); ?></div>
					<?php } else { ?>
						
						<div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2014. Desenvolvido por <a class="blue" href="http://www.convertpublicidade.com.br">Convert Publicidade</a>.</div>
					<?php } ?>
				<?php } else { ?>
					<div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2014. Desenvolvido por <a class="blue" href="http://www.convertpublicidade.com.br">Convert Publicidade</a>.</div>
				<?php } ?>

				</div> <!-- .row -->

			</div> <!-- .container -->

		</footer> <!-- #footend -->

		<?php $js_path="catalog/view/theme/sellegance/js"; ?>

		<script type="text/javascript" src="<?php echo $js_path; ?>/bootstrap.min.js"></script>
		<!--[if lt IE 9]> <script type="text/javascript" src="<?php echo $js_path; ?>/selectivizr.min.js"></script> <![endif]-->
		<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.total-storage.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/respond.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.validate.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.easing-1.3.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.flexslider.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/cloud-zoom.1.0.3-min.js"></script>
		<?php if ($this->config->get('sellegance_slider') == 'camera') { ?>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.mobile.customized.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/camera.min.js"></script>
		<?php } ?>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.ui.totop.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/custom.js"></script>

		<?php if ($this->config->get('sellegance_custom_js') != '') { 
			echo htmlspecialchars_decode( $this->config->get('sellegance_custom_js'), ENT_QUOTES );
		}  ?>

		<script type="text/javascript">
		<?php if ($this->config->get('sellegance_category_style') == 'list') { ?>
			if (view) {	display(view);	} 
			else { display('list'); }
		<?php } else { ?>
			if (view=='list') {	display(view);	} 
		<?php } ?>
		</script>
		
	</body>

</html>