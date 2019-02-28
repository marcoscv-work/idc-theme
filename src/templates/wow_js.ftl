<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>

<script>
	<#if display_1_scroll_effect != "none">
		var display1 = $('#main-content .display-1');
		if (display1) {
			display1.addClass("wow ${display_1_scroll_effect}");
		}
	</#if>
	<#if display_2_scroll_effect != "none">
		var display2 = $('#main-content .display-2');
		if (display2) {
			display2.addClass("wow ${display_2_scroll_effect}");
		}
	</#if>
	<#if display_3_scroll_effect != "none">
		var display3 = $('#main-content .display-3');
		if (display3) {
			display3.addClass("wow ${display_3_scroll_effect}");
		}
	</#if>
	<#if image_scroll_effect != "none">
		var imageScrollEffect = $('#main-content img');
		if (imageScrollEffect) {
			display3.addClass("wow ${image_scroll_effect}");
		}
	</#if>
	<#if card_scroll_effect != "none">
		var cardScrollEffect = $('#main-content card');
		if (cardScrollEffect) {
			display3.addClass("wow ${card_scroll_effect}");
		}
	</#if>
	<#if button_scroll_effect != "none">
		var button = $('#main-content .btn');
		if (button) {
			button.addClass("wow ${button_scroll_effect}");
		}
	</#if>

	new WOW().init();
</script>