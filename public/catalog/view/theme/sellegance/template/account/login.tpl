<?php echo $header; ?>

	<?php echo $content_top; ?>

	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	<header class="heading">
		
		<h1><?php echo $heading_title; ?></h1>

		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</header>

	<section id="maincontent">

		<div class="mainborder">

			<div class="cart-inner">

				<div class="row">

				<div class="col-sm-6 register">
				
					<div class="contentset center">
						<h4 class="inner"><span><?php echo $text_new_customer; ?></span></h4>
					</div>

					<p><b><?php echo $text_register; ?></b></p>

					<p><?php echo $text_register_account; ?></p>
					
					<div class="buttons">
						<a href="<?php echo $register; ?>" class="button button-default button-inverse"><span><?php echo $button_continue; ?></span></a>
					</div>
				
				</div>

				<div class="col-sm-6 login">

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login" class="form">

						<div class="contentset center">
							<h4 class="inner"><span><?php echo $text_returning_customer; ?></span></h4>
						</div>
							
						<p><?php echo $text_i_am_returning_customer; ?></p>
						
						<div class="form-group">
							<label for="email"><?php echo $entry_email; ?></label>
							<input type="email" name="email" id="email" class="form-control required" required />
						</div>

						<div class="form-group">
							<label for="password"><?php echo $entry_password; ?></label>
							<input type="password" name="password" id="password" class="form-control required" required />
						</div>

						<div class="buttons">
							<input type="submit" value="<?php echo $button_login; ?>" class="button button-default button-inverse" />
							<span class="forgotten"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></span>
						</div>

						<?php if ($redirect) { ?>
						<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
						<?php } ?>

					</form>
				
				</div>

				</div>

			</div>

		</div>

	</section><!-- #maincontent -->

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--

		$('#login input').keydown(function(e) {
			if (e.keyCode == 13) {
				$('#login').submit();
			}
		});

	//--></script>

<?php echo $footer; ?>