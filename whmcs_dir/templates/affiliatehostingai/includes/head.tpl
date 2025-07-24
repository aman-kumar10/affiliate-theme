<!-- Styling -->
{\WHMCS\View\Asset::fontCssInclude('open-sans-family.css')}
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/dark.theme.min.css" rel="stylesheet">

<link rel='stylesheet' id='jkit-elements-main-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/jeg-elementor-kit/assets/css/elements/main.css?ver=2.6.12' media='all' />
<link rel='stylesheet' id='elementor-frontend-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/frontend.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='elementor-post-64-css' href='{$WEB_ROOT}/templates/{$template}/files/uploads/elementor/css/post-64.css?ver=1742853505' media='all' />
<link rel='stylesheet' id='hello-elementor-css' href='{$WEB_ROOT}/templates/{$template}/files/hello-elementor/style.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='hello-elementor-theme-style-css' href='{$WEB_ROOT}/templates/{$template}/files/hello-elementor/theme.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='hello-elementor-header-footer-css' href='{$WEB_ROOT}/templates/{$template}/files/hello-elementor/header-footer.min.css?ver=3.3.0' media='all' />
<link rel='stylesheet' id='widget-image-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/widget-image.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='widget-icon-box-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/widget-icon-box.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='widget-social-icons-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/widget-social-icons.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='widget-heading-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/widget-heading.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='widget-icon-list-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/elementor/assets/css/widget-icon-list.min.css?ver=3.28.1' media='all' />
<link rel='stylesheet' id='elementor-post-58-css' href='{$WEB_ROOT}/templates/{$template}/files/uploads/elementor/css/post-58.css?ver=1742853507' media='all' />
<link rel='stylesheet' id='elementor-post-214-css' href='{$WEB_ROOT}/templates/{$template}/files/uploads/elementor/css/post-214.css?ver=1742853507' media='all' />
<link rel='stylesheet' id='elementor-post-351-css' href='{$WEB_ROOT}/templates/{$template}/files/uploads/elementor/css/post-351.css?ver=1742956798' media='all' />
<link rel='stylesheet' id='hello-elementor-child-style-css' href='{$WEB_ROOT}/templates/{$template}/files/hello-theme-child-master/style.css?ver=2.0.0' media='all' />
<link rel='stylesheet' id='elementor-gf-local-inter-css' href='{$WEB_ROOT}/templates/{$template}/files/uploads/elementor/google-fonts/css/inter.css?ver=1742258295' media='all' />
<link rel='stylesheet' id='elementor-icons-jkiticon-css' href='{$WEB_ROOT}/templates/{$template}/files/plugins/jeg-elementor-kit/assets/fonts/jkiticon/jkiticon.css?ver=2.6.12' media='all' />

{literal}
<style id="wp-custom-css">
			p:last-child {
    margin-block-end: 0;
}

a:hover{
	cursor: pointer;
}


.elementor-field-textual {
    padding: 14px 14px;
}

.eicon-caret-down:before {
   
    /*color: #c8fa03;*/
}

.text-accent{
    color: var( --e-global-color-secondary );
}

.elementor-widget-n-accordion .e-n-accordion-item{
    border-style: solid;
    border-width: 1px 1px 1px 1px;
    border-color: #E9E8E8;
    border-radius: 20px;
}


</style>
{/literal}

<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
{assetExists file="custom.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}

<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
    {if $captcha}{$captcha->getPageJs()}{/if}
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
