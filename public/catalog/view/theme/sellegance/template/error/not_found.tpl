<?php echo $header; ?>

	<?php echo $content_top; ?>
		
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	 
	 <header class="heading">
		<h1><?php echo $heading_title; ?></h1>
	</header>

	<?php 
	
	if ($column_left && $column_right) { 
		$main = "col-sm-6 middle sideleft"; }
	else if ($column_left || $column_right) { 
		$main = "col-sm-9";
		if($column_left) $main.=" sideleft"; else $main.= " sideright";
	} 
	else { $main = "col-sm-12"; } 

	?>

	<div class="row">

		<?php echo $column_left; ?>

		<section id="maincontent" class="<?php echo $main; ?>" role="main" >

			<div class="mainborder">

				<?php if ($column_left || $column_right) { ?>
					<div id="toggle_sidebar"></div>
				<?php } ?>

				<div class="empty">
					
					<p><?php echo $text_error; ?></p>

					<div class="form-actions">
						<a href="<?php echo $continue; ?>" class="button button-default button-inverse"><?php echo $button_continue; ?></a>
					</div>

				</div>

			</div>

		</section> <!-- #maincontent -->
		
		<?php echo $column_right; ?>

	</div> <!-- .row -->
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>