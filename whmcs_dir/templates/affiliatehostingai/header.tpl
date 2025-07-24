<!doctype html>
<html lang="en">

{if $smarty.get.debug == 1}
    {debug}
{/if}

<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>

<body
    class="error404 logged-in wp-custom-logo wp-embed-responsive jkit-color-scheme theme-default elementor-default elementor-kit-64 elementor-page-351"
    data-phone-cc-input="{$phoneNumberInputStyle}">



    <a class="skip-link screen-reader-text" href="#content">Skip to content</a>
    {literal}
        <div data-elementor-type="header" data-elementor-id="58" class="elementor elementor-58 elementor-location-header"
            data-elementor-post-type="elementor_library">
            <div class="elementor-element elementor-element-99d75bd header--display e-flex e-con-boxed elementor-invisible e-con e-parent"
                data-id="99d75bd" data-element_type="container"
                data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;sticky&quot;:&quot;top&quot;,&quot;sticky_effects_offset&quot;:60,&quot;animation&quot;:&quot;fadeInDown&quot;,&quot;sticky_on&quot;:[&quot;desktop&quot;,&quot;tablet&quot;,&quot;mobile&quot;],&quot;sticky_offset&quot;:0,&quot;sticky_anchor_link_offset&quot;:0}">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-4d2a61d e-con-full e-flex e-con e-child"
                        data-id="4d2a61d" data-element_type="container">
                        <div class="elementor-element elementor-element-7501f94 elementor-widget elementor-widget-theme-site-logo elementor-widget-image"
                            data-id="7501f94" data-element_type="widget" data-widget_type="theme-site-logo.default">
                            <div class="elementor-widget-container">
                                <a href="https://affiliatehosting.ai">
                                    <img fetchpriority="high" width="527" height="142"
                                        src="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png"
                                        class="attachment-full size-full wp-image-19" alt="" decoding="async"
                                        srcset="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png 527w, https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527-300x81.png 300w"
                                        sizes="(max-width: 527px) 100vw, 527px" /> </a>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element elementor-element-379e5e1 e-con-full e-flex e-con e-child"
                        data-id="379e5e1" data-element_type="container">
                        <div class="elementor-element elementor-element-ad0d39d elementor-widget elementor-widget-jkit_nav_menu"
                            data-id="ad0d39d" data-element_type="widget" data-widget_type="jkit_nav_menu.default">
                            <div class="elementor-widget-container">
                                <div class="jeg-elementor-kit jkit-nav-menu break-point-tablet submenu-click-title jeg_module___67e3694e704db"
                                    data-item-indicator="&lt;i aria-hidden=&quot;true&quot; class=&quot;jki jki-chevron-down-light&quot;&gt;&lt;/i&gt;">
                                    <button aria-label="open-menu" class="jkit-hamburger-menu"><i aria-hidden="true"
                                            class="jki jki-bars-solid"></i></button>
                                    <div class="jkit-menu-wrapper">
                                        <div class="jkit-menu-container">

                                        {/literal}
                                        <ul id="menu-main-menu" class="jkit-menu jkit-menu-direction-flex jkit-submenu-position-top">

                                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                                        </ul>
                                        {literal}

                                            <div class="jkit-nav-identity-panel">
                                                <div class="jkit-nav-site-title"><a href="https://affiliatehosting.ai"
                                                        class="jkit-nav-logo" aria-label="Home Link"><img width="527"
                                                            height="142"
                                                            src="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png"
                                                            class="attachment-full size-full" alt="" decoding="async"
                                                            srcset="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png 527w, https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527-300x81.png 300w"
                                                            sizes="(max-width: 527px) 100vw, 527px" /></a></div>
                                                <button aria-label="close-menu" class="jkit-close-menu"><svg
                                                        aria-hidden="true" class="e-font-icon-svg e-fas-times"
                                                        viewBox="0 0 352 512" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z">
                                                        </path>
                                                    </svg></button>
                                            </div>
                                        </div>
                                        <div class="jkit-overlay"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-element  e-con-full e-flex e-con e-child" data-element_type="container">
                        <div class="elementor-element elementor-element-ad0d39d elementor-widget elementor-widget-jkit_nav_menu"
                            data-id="ad0d39d" data-element_type="widget" data-widget_type="jkit_nav_menu.default">
                            <div class="elementor-widget-container">
                                <div class="jeg-elementor-kit jkit-nav-menu break-point-tablet submenu-click-title jeg_module___67e3694e704db"
                                    data-item-indicator="&lt;i aria-hidden=&quot;true&quot; class=&quot;jki jki-chevron-down-light&quot;&gt;&lt;/i&gt;">
                                    <button aria-label="open-menu" class="jkit-hamburger-menu"><i aria-hidden="true"
                                            class="jki jki-bars-solid"></i></button>
                                    <div class="jkit-menu-wrapper">
                                        <div class="jkit-menu-container accounts-items">

                                            {/literal}
                                            <ul id="account_items" class="jkit-menu jkit-menu-direction-flex jkit-submenu-position-top">
                                                {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                                            </ul>
                                            {literal}

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {/literal}


        <div data-elementor-type="error-404" data-elementor-id="351"
            class="elementor elementor-351 elementor-location-single" data-elementor-post-type="elementor_library">

            {if $captcha}{$captcha->getMarkup()}{/if}
            {$headeroutput}

            <header id="header" class="header">
                {if $loggedin}
                    <div class="topbar">
                        <div class="container">
                            <div class="d-flex">
                                <div class="mr-auto">
                                    <button type="button" class="btn" data-toggle="popover" id="accountNotifications"
                                        data-placement="bottom">
                                        <i class="far fa-flag"></i>
                                        {if count($clientAlerts) > 0}
                                            {count($clientAlerts)}
                                            <span class="d-none d-sm-inline">Notifications</span>
                                        {else}
                                            <span class="d-sm-none">0</span>
                                            <span class="d-none d-sm-inline">{lang key='nonotifications'}</span>
                                        {/if}
                                    </button>
                                    <div id="accountNotificationsContent" class="w-hidden">
                                        <ul class="client-alerts">
                                            {foreach $clientAlerts as $alert}
                                                <li>
                                                    <a href="{$alert->getLink()}">
                                                        <i
                                                            class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                                        <div class="message">{$alert->getMessage()}</div>
                                                    </a>
                                                </li>
                                            {foreachelse}
                                                <li class="none">
                                                    {lang key='notificationsnone'}
                                                </li>
                                            {/foreach}
                                        </ul>
                                    </div>
                                </div>

                                <div class="ml-auto">
                                    <div class="input-group active-client" role="group">
                                        <div class="input-group-prepend d-none d-md-inline">
                                            <span class="input-group-text">{lang key='loggedInAs'}:</span>
                                        </div>
                                        <div class="btn-group">
                                            <a href="{$WEB_ROOT}/clientarea.php?action=details"
                                                class="btn btn-active-client">
                                                <span>
                                                    {if $client.companyname}
                                                        {$client.companyname}
                                                    {else}
                                                        {$client.fullName}
                                                    {/if}
                                                </span>
                                            </a>
                                            <a href="{routePath('user-accounts')}" class="btn" data-toggle="tooltip"
                                                data-placement="bottom" title="Switch Account">
                                                <i class="fad fa-random"></i>
                                            </a>
                                            {if $adminMasqueradingAsClient || $adminLoggedIn}
                                                <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin"
                                                    data-toggle="tooltip" data-placement="bottom"
                                                    title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                                    <i class="fas fa-redo-alt"></i>
                                                    <span
                                                        class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                                </a>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}

                <div class=" navbar-light">
                    <div class="container">
                        <ul class="navbar-nav toolbar">
                            <li class="nav-item ml-3 d-xl-none" style="padding:10px;">
                                <button class="btn nav-link" type="button" data-toggle="collapse"
                                    data-target="#mainNavbar">
                                    <span class="fas fa-bars fa-fw"></span>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>

                <nav class="master-breadcrumb" aria-label="breadcrumb">
                    <div class="container">
                        {include file="$template/includes/breadcrumb.tpl"}
                    </div>
                </nav>
            </header>
            {include file="$template/includes/network-issues-notifications.tpl"}
            {include file="$template/includes/validateuser.tpl"}
            {include file="$template/includes/verifyemail.tpl"}

            {if $templatefile == 'homepage'}
                {if $registerdomainenabled || $transferdomainenabled}
                    {include file="$template/includes/domain-search.tpl"}
                {/if}
            {/if}

            <section id="main-body">
                <div class="{if !$skipMainBodyContainer}container{/if}">
                    <div class="row">

                        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                            <div class="col-lg-4 col-xl-3">
                                <div class="sidebar">
                                    {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                                </div>
                                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                                    <div class="d-none d-lg-block sidebar">
                                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                                    </div>
                                {/if}
                            </div>
                        {/if}
                        <div
class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">