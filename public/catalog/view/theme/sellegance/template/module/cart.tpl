<section id="cart">

	<div class="heading">
		<h4><?php echo $heading_title; ?></h4>
		<div class="cart-total">
			<a href="<?php echo $cart; ?>" id="cart-total"><?php echo $text_items; ?></a>
		</div>
	</div>
	<div class="details">
		<div class="arrow"><i class="icon-caret-down"></i></div>
		<div class="content">
			
			<?php if ($products || $vouchers) { ?>
			
			<div class="mini-cart-info">
				<table class="items">
					<?php foreach ($products as $product) { ?>
					<tr>
						<td class="image"><?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
							<?php } ?></td>
						<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<div>
								<?php foreach ($product['option'] as $option) { ?>
								- <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
								<?php } ?>
							</div>
							<div>
							<?php if ($product['recurring']): ?>
								- <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
							<?php endif; ?>
							</div>
						</td>
						<td class="quantity"><?php echo $product['quantity']; ?></td>
						<td class="total"><?php echo $product['total']; ?></td>
						<td class="remove"><a title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"> <i class="icon-remove-sign"></i></a></td>
					</tr>
					<?php } ?>
					<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="image"></td>
						<td class="name"><?php echo $voucher['description']; ?></td>
						<td class="quantity">x&nbsp;1</td>
						<td class="total"><?php echo $voucher['amount']; ?></td>
						<td class="remove"><a title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" > <i class="icon-remove-sign"></i></a></td>
					</tr>
					<?php } ?>
				</table>
			</div>

			<div class="mini-cart-total">
				<table class="total">
					<?php foreach ($totals as $total) { ?>
					<tr>
						<td class="right"><b><?php echo $total['title']; ?>:</b></td>
						<td class="right"><?php echo $total['text']; ?></td>
					</tr>
					<?php } ?>
				</table>
			</div>

			<div class="checkout">
				<a href="<?php echo $cart; ?>" class="button button-default button-xs"><?php echo $text_cart; ?></a>
				<a href="<?php echo $checkout; ?>" class="button button-cart button-default button-xs"><?php echo $text_checkout; ?></a>
			</div>

			<?php } else { ?>

			<div class="empty white"><?php echo $text_empty; ?></div>

			<?php } ?>

			<a id="closecart" title="Close" onclick="$('#cart').removeClass('active');"><i class="icon-remove-sign"></i></a>

		</div>
	</div>
</section>