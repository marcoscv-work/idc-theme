<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
	wrap_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-content"))
	display_1_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("display-1-scroll-effect"))
	display_2_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("display-2-scroll-effect"))
	display_3_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("display-3-scroll-effect"))
	image_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("image-scroll-effect"))
	card_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("card-scroll-effect"))
	button_scroll_effect = getterUtil.getString(themeDisplay.getThemeSetting("button-scroll-effect"))
/>

<#if wrap_content>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>