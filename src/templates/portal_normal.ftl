<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-top">
				<div class="container-fluid container-fluid-max-xl">
					<div class="align-items-center autofit-row flex-wrap">
						<a class="${logo_css_class} autofit-col align-items-center" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
							<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

							<#if show_site_name>
								<h1 class="d-sm-inline font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
							</#if>
						</a>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone"}) />

						<div class="autofit-col autofit-col-expand navbar-classic">
							<#include "${full_templates_path}/navigation.ftl" />
						</div>

						<div class="autofit-col user-personal-bar">
							<div class="autofit-row align-items-center justify-content-end">
								<div class="autofit-col blue-float-border text-letter-spacing-1 font-rubik px-2 px-md-3">
									CONTACT
								</div>

								<div class="autofit-col autofit-col p-2 mr-3 ml-2">
									<svg class="lexicon-icon">
										<use xlink:href="${images_folder}/lexicon/icons.svg#search" />
									</svg>
								</div>

								<div class="autofit-col">
									<@liferay.user_personal_bar />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h1 class="sr-only">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center text-md-left">
						<@liferay.language key="powered-by" />

						<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>
					</div>
				</div>
			</div>
		</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>

<script>
	<#if display_1_scroll_effect != "none">
		var display1 = $('.portlet-layout .display-1');
		if (display1) {
			display1.addClass("wow ${display_1_scroll_effect}");
		}
	</#if>
	<#if display_2_scroll_effect != "none">
		var display2 = $('.portlet-layout .display-2');
		if (display2) {
			display2.addClass("wow ${display_2_scroll_effect}");
		}
	</#if>
	<#if display_3_scroll_effect != "none">
		var display3 = $('.portlet-layout .display-3');
		if (display3) {
			display3.addClass("wow ${display_3_scroll_effect}");
		}
	</#if>
	<#if image_scroll_effect != "none">
		var imageScrollEffect = $('.portlet-layout img');
		if (imageScrollEffect) {
			display3.addClass("wow ${image_scroll_effect}");
		}
	</#if>
	<#if card_scroll_effect != "none">
		var cardScrollEffect = $('.portlet-layout card');
		if (cardScrollEffect) {
			display3.addClass("wow ${card_scroll_effect}");
		}
	</#if>
	<#if button_scroll_effect != "none">
		var button = $('.portlet-layout .btn');
		if (button) {
			button.addClass("wow ${button_scroll_effect}");
		}
	</#if>

	new WOW().init();
</script>

</body>

</html>