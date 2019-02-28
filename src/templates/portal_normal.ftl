<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" rel="stylesheet" >
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

								<#if show_header_search>
									<div class="autofit-col autofit-col p-2 mr-3 ml-2">
										<svg class="lexicon-icon">
											<use xlink:href="${images_folder}/lexicon/icons.svg#search" />
										</svg>
									</div>
								</#if>

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

<#include "${full_templates_path}/wow_js.ftl" />

</body>

</html>