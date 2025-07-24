                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-lg-none sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <footer id="footer" class="footer">
        <div class="container">
            <ul class="list-inline mb-7 text-center float-lg-right">

                {if $languagechangeenabled && count($locales) > 1 || $currencies}
                    <li class="list-inline-item">
                        <button type="button" class="btn" data-toggle="modal" data-target="#modalChooseLanguage">
                            <div class="d-inline-block align-middle">
                                <div class="iti-flag {if $activeLocale.countryCode === '001'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                            </div>
                            {$activeLocale.localisedName}
                            /
                            {$activeCurrency.prefix}
                            {$activeCurrency.code}
                        </button>
                    </li>
                {/if}
            </ul>

            <ul class="nav justify-content-center justify-content-lg-start mb-7">
            </ul>
        </div>
    </footer>

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                                <input type="hidden" name="language" value="{$language}" />
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}



				</div>
				{literal}
				<div data-elementor-type="footer" data-elementor-id="214" class="elementor elementor-214 elementor-location-footer" data-elementor-post-type="elementor_library">
			<div class="elementor-element elementor-element-f8e3b90 e-flex e-con-boxed e-con e-parent" data-id="f8e3b90" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
					<div class="e-con-inner">
		<div class="elementor-element elementor-element-d0c2907 e-con-full e-flex e-con e-child" data-id="d0c2907" data-element_type="container">
		<div class="elementor-element elementor-element-c27b1bd e-con-full e-flex e-con e-child" data-id="c27b1bd" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
		<div class="elementor-element elementor-element-ac6ba17 e-con-full e-flex e-con e-child" data-id="ac6ba17" data-element_type="container">
				<div class="elementor-element elementor-element-6d84de0 elementor-position-left elementor-vertical-align-middle elementor-widget__width-auto elementor-view-framed elementor-shape-circle elementor-mobile-position-top elementor-widget elementor-widget-icon-box" data-id="6d84de0" data-element_type="widget" data-widget_type="icon-box.default">
				<div class="elementor-widget-container">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-phone-alt" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M497.39 361.8l-112-48a24 24 0 0 0-28 6.9l-49.6 60.6A370.66 370.66 0 0 1 130.6 204.11l60.6-49.6a23.94 23.94 0 0 0 6.9-28l-48-112A24.16 24.16 0 0 0 122.6.61l-104 24A24 24 0 0 0 0 48c0 256.5 207.9 464 464 464a24 24 0 0 0 23.4-18.6l24-104a24.29 24.29 0 0 0-14.01-27.6z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h4 class="elementor-icon-box-title">
						<span  >
							Give Us A Call						</span>
					</h4>
				
									<p class="elementor-icon-box-description">
						(732) 955-HOST (4678)					</p>
				
			</div>
			
		</div>
						</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-c518ed2 e-con-full e-flex e-con e-child" data-id="c518ed2" data-element_type="container">
				<div class="elementor-element elementor-element-02f16bf elementor-position-left elementor-vertical-align-middle elementor-widget__width-auto elementor-view-framed elementor-shape-circle elementor-mobile-position-top elementor-widget elementor-widget-icon-box" data-id="02f16bf" data-element_type="widget" data-widget_type="icon-box.default">
				<div class="elementor-widget-container">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-envelope" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h4 class="elementor-icon-box-title">
						<span  >
							Email Address						</span>
					</h4>
				
									<p class="elementor-icon-box-description">
						support@AffiliateHosting.ai					</p>
				
			</div>
			
		</div>
						</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-58a14a4 e-con-full e-flex e-con e-child" data-id="58a14a4" data-element_type="container">
				<div class="elementor-element elementor-element-a803fb1 elementor-position-left elementor-vertical-align-middle elementor-widget__width-auto elementor-view-framed elementor-shape-circle elementor-mobile-position-top elementor-widget elementor-widget-icon-box" data-id="a803fb1" data-element_type="widget" data-widget_type="icon-box.default">
				<div class="elementor-widget-container">
							<div class="elementor-icon-box-wrapper">

						<div class="elementor-icon-box-icon">
				<span  class="elementor-icon">
				<svg aria-hidden="true" class="e-font-icon-svg e-fas-map-marker-alt" viewBox="0 0 384 512" xmlns="http://www.w3.org/2000/svg"><path d="M172.268 501.67C26.97 291.031 0 269.413 0 192 0 85.961 85.961 0 192 0s192 85.961 192 192c0 77.413-26.97 99.031-172.268 309.67-9.535 13.774-29.93 13.773-39.464 0zM192 272c44.183 0 80-35.817 80-80s-35.817-80-80-80-80 35.817-80 80 35.817 80 80 80z"></path></svg>				</span>
			</div>
			
						<div class="elementor-icon-box-content">

									<h4 class="elementor-icon-box-title">
						<span  >
							Office Location						</span>
					</h4>
				
									<p class="elementor-icon-box-description">
						Lakehust, NJ					</p>
				
			</div>
			
		</div>
						</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-eb78d34 e-con-full e-flex e-con e-child" data-id="eb78d34" data-element_type="container">
		<div class="elementor-element elementor-element-476b249 e-con-full e-flex e-con e-child" data-id="476b249" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
				<div class="elementor-element elementor-element-c25f4ad elementor-widget elementor-widget-theme-site-logo elementor-widget-image" data-id="c25f4ad" data-element_type="widget" data-widget_type="theme-site-logo.default">
				<div class="elementor-widget-container">
											<a href="https://affiliatehosting.ai">
			<img fetchpriority="high" width="527" height="142" src="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png" class="attachment-full size-full wp-image-19" alt="" decoding="async" srcset="https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527.png 527w, https://affiliatehosting.ai/wp-content/uploads/2024/12/Affiliate-Hosting-new-logo_527-300x81.png 300w" sizes="(max-width: 527px) 100vw, 527px" />				</a>
											</div>
				</div>
				<div class="elementor-element elementor-element-29a1a75 elementor-widget__width-initial elementor-widget elementor-widget-text-editor" data-id="29a1a75" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
									Affiliate Hosting offers premium web hosting solutions designed for speed, reliability, and seamless performance. Whether you're running a personal blog, an e-commerce store, or a corporate website.								</div>
				</div>
				<div class="elementor-element elementor-element-7742139 elementor-shape-circle e-grid-align-left e-grid-align-tablet-left elementor-grid-0 elementor-widget elementor-widget-social-icons" data-id="7742139" data-element_type="widget" data-widget_type="social-icons.default">
				<div class="elementor-widget-container">
							<div class="elementor-social-icons-wrapper elementor-grid">
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-facebook-f elementor-animation-shrink elementor-repeater-item-c0163ab" target="_blank">
						<span class="elementor-screen-only">Facebook-f</span>
						<svg class="e-font-icon-svg e-fab-facebook-f" viewBox="0 0 320 512" xmlns="http://www.w3.org/2000/svg"><path d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-twitter elementor-animation-shrink elementor-repeater-item-310ab07" target="_blank">
						<span class="elementor-screen-only">Twitter</span>
						<svg class="e-font-icon-svg e-fab-twitter" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-instagram elementor-animation-shrink elementor-repeater-item-63f86db" target="_blank">
						<span class="elementor-screen-only">Instagram</span>
						<svg class="e-font-icon-svg e-fab-instagram" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg"><path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path></svg>					</a>
				</span>
							<span class="elementor-grid-item">
					<a class="elementor-icon elementor-social-icon elementor-social-icon-youtube elementor-animation-shrink elementor-repeater-item-d54d883" target="_blank">
						<span class="elementor-screen-only">Youtube</span>
						<svg class="e-font-icon-svg e-fab-youtube" viewBox="0 0 576 512" xmlns="http://www.w3.org/2000/svg"><path d="M549.655 124.083c-6.281-23.65-24.787-42.276-48.284-48.597C458.781 64 288 64 288 64S117.22 64 74.629 75.486c-23.497 6.322-42.003 24.947-48.284 48.597-11.412 42.867-11.412 132.305-11.412 132.305s0 89.438 11.412 132.305c6.281 23.65 24.787 41.5 48.284 47.821C117.22 448 288 448 288 448s170.78 0 213.371-11.486c23.497-6.321 42.003-24.171 48.284-47.821 11.412-42.867 11.412-132.305 11.412-132.305s0-89.438-11.412-132.305zm-317.51 213.508V175.185l142.739 81.205-142.739 81.201z"></path></svg>					</a>
				</span>
					</div>
						</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-873a9fe e-con-full e-flex e-con e-child" data-id="873a9fe" data-element_type="container">
				<div class="elementor-element elementor-element-e147f45 elementor-widget elementor-widget-heading" data-id="e147f45" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
					<h4 class="elementor-heading-title elementor-size-default">Quick Links</h4>				</div>
				</div>
				<div class="elementor-element elementor-element-3e10b0b elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list" data-id="3e10b0b" data-element_type="widget" data-widget_type="icon-list.default">
				<div class="elementor-widget-container">
							<ul class="elementor-icon-list-items">
							<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">About Us</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Services</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Pricing</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Blog</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Contact</span>
											</a>
									</li>
						</ul>
						</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-e0ac327 e-con-full e-flex e-con e-child" data-id="e0ac327" data-element_type="container">
				<div class="elementor-element elementor-element-9c24f08 elementor-widget elementor-widget-heading" data-id="9c24f08" data-element_type="widget" data-widget_type="heading.default">
				<div class="elementor-widget-container">
					<h4 class="elementor-heading-title elementor-size-default">Useful Links</h4>				</div>
				</div>
				<div class="elementor-element elementor-element-005400f elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list" data-id="005400f" data-element_type="widget" data-widget_type="icon-list.default">
				<div class="elementor-widget-container">
							<ul class="elementor-icon-list-items">
							<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Privacy Policy</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Terms and Conditions</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Disclaimer</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">Support</span>
											</a>
									</li>
								<li class="elementor-icon-list-item">
											<a href="#">

											<span class="elementor-icon-list-text">FAQ</span>
											</a>
									</li>
						</ul>
						</div>
				</div>
				</div>
				</div>
		<div class="elementor-element elementor-element-8fd28e2 e-con-full e-flex e-con e-child" data-id="8fd28e2" data-element_type="container">
				<div class="elementor-element elementor-element-ed2cfab elementor-widget elementor-widget-text-editor" data-id="ed2cfab" data-element_type="widget" data-widget_type="text-editor.default">
				<div class="elementor-widget-container">
									Copyright © 2025. All rights reserved.								</div>
				</div>
				</div>
				</div>
					</div>
				</div>
				</div>{/literal}
		
		
		
		
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor/assets/js/common.min.js?ver=3.28.1" id="elementor-common-js"></script>

{literal}
<script id="elementor-app-loader-js-before">
var elementorAppConfig = {"menu_url":"https:\/\/affiliatehosting.ai\/wp-admin\/admin.php?page=elementor-app&ver=3.28.1#\/site-editor","assets_url":"https:\/\/affiliatehosting.ai\/wp-content\/plugins\/elementor\/assets\/","pages_url":"https:\/\/affiliatehosting.ai\/wp-admin\/edit.php?post_type=page","return_url":"https:\/\/affiliatehosting.ai\/wp-admin\/","hasPro":true,"admin_url":"https:\/\/affiliatehosting.ai\/wp-admin\/","login_url":"https:\/\/affiliatehosting.ai\/wp-login.php","base_url":"https:\/\/affiliatehosting.ai\/wp-admin\/admin.php?page=elementor-app&ver=3.28.1","promotion":{"upgrade_url":"https:\/\/go.elementor.com\/go-pro-theme-builder\/"},"site-editor":[],"import-export":[],"kit-library":[],"onboarding":[]};
</script>
{/literal}

<script src="https://affiliatehosting.ai/wp-content/plugins/elementor/assets/js/app-loader.min.js?ver=3.28.1" id="elementor-app-loader-js"></script>
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor/assets/js/webpack.runtime.min.js?ver=3.28.1" id="elementor-webpack-runtime-js"></script>
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor/assets/js/frontend-modules.min.js?ver=3.28.1" id="elementor-frontend-modules-js"></script>
{literal}
<script id="elementor-frontend-js-before">
var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":false,"isScriptDebug":false},"i18n":{"shareOnFacebook":"Share on Facebook","shareOnTwitter":"Share on Twitter","pinIt":"Pin it","download":"Download","downloadImage":"Download image","fullscreen":"Fullscreen","zoom":"Zoom","share":"Share","playVideo":"Play Video","previous":"Previous","next":"Next","close":"Close","a11yCarouselPrevSlideMessage":"Previous slide","a11yCarouselNextSlideMessage":"Next slide","a11yCarouselFirstSlideMessage":"This is the first slide","a11yCarouselLastSlideMessage":"This is the last slide","a11yCarouselPaginationBulletMessage":"Go to slide"},"is_rtl":false,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"responsive":{"breakpoints":{"mobile":{"label":"Mobile Portrait","value":767,"default_value":767,"direction":"max","is_enabled":true},"mobile_extra":{"label":"Mobile Landscape","value":880,"default_value":880,"direction":"max","is_enabled":false},"tablet":{"label":"Tablet Portrait","value":1024,"default_value":1024,"direction":"max","is_enabled":true},"tablet_extra":{"label":"Tablet Landscape","value":1200,"default_value":1200,"direction":"max","is_enabled":false},"laptop":{"label":"Laptop","value":1366,"default_value":1366,"direction":"max","is_enabled":false},"widescreen":{"label":"Widescreen","value":2400,"default_value":2400,"direction":"min","is_enabled":false}},"hasCustomBreakpoints":false},"version":"3.28.1","is_static":false,"experimentalFeatures":{"e_font_icon_svg":true,"additional_custom_breakpoints":true,"container":true,"e_local_google_fonts":true,"theme_builder_v2":true,"hello-theme-header-footer":true,"nested-elements":true,"editor_v2":true,"e_element_cache":true,"home_screen":true,"launchpad-checklist":true},"urls":{"assets":"https:\/\/affiliatehosting.ai\/wp-content\/plugins\/elementor\/assets\/","ajaxurl":"https:\/\/affiliatehosting.ai\/wp-admin\/admin-ajax.php","uploadUrl":"https:\/\/affiliatehosting.ai\/wp-content\/uploads"},"nonces":{"floatingButtonsClickTracking":"938f7e53ba"},"swiperClass":"swiper","settings":{"editorPreferences":[]},"kit":{"body_background_background":"classic","active_breakpoints":["viewport_mobile","viewport_tablet"],"global_image_lightbox":"yes","lightbox_enable_counter":"yes","lightbox_enable_fullscreen":"yes","lightbox_enable_zoom":"yes","lightbox_enable_share":"yes","lightbox_title_src":"title","lightbox_description_src":"description","hello_header_logo_type":"logo","hello_header_menu_layout":"horizontal","hello_footer_logo_type":"logo"},"post":{"id":0,"title":"Page not found &#8211; affiliatehosting","excerpt":""},"user":{"roles":["administrator"]}};
</script>
{/literal}
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor/assets/js/frontend.min.js?ver=3.28.1" id="elementor-frontend-js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/files/plugins/jeg-elementor-kit/assets/js/elements/nav-menu.js?ver=2.6.12" id="jkit-element-navmenu-js"></script>


<script src="https://affiliatehosting.ai/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.min.js?ver=3.28.1" id="elementor-pro-webpack-runtime-js"></script>
{literal}
<script id="elementor-pro-frontend-js-before">
var ElementorProFrontendConfig = {"ajaxurl":"https:\/\/affiliatehosting.ai\/wp-admin\/admin-ajax.php","nonce":"4140f78c57","urls":{"assets":"https:\/\/affiliatehosting.ai\/wp-content\/plugins\/elementor-pro\/assets\/","rest":"https:\/\/affiliatehosting.ai\/wp-json\/"},"settings":{"lazy_load_background_images":true},"popup":{"hasPopUps":true},"shareButtonsNetworks":{"facebook":{"title":"Facebook","has_counter":true},"twitter":{"title":"Twitter"},"linkedin":{"title":"LinkedIn","has_counter":true},"pinterest":{"title":"Pinterest","has_counter":true},"reddit":{"title":"Reddit","has_counter":true},"vk":{"title":"VK","has_counter":true},"odnoklassniki":{"title":"OK","has_counter":true},"tumblr":{"title":"Tumblr"},"digg":{"title":"Digg"},"skype":{"title":"Skype"},"stumbleupon":{"title":"StumbleUpon","has_counter":true},"mix":{"title":"Mix"},"telegram":{"title":"Telegram"},"pocket":{"title":"Pocket","has_counter":true},"xing":{"title":"XING","has_counter":true},"whatsapp":{"title":"WhatsApp"},"email":{"title":"Email"},"print":{"title":"Print"},"x-twitter":{"title":"X"},"threads":{"title":"Threads"}},"facebook_sdk":{"lang":"en_US","app_id":""},"lottie":{"defaultAnimationUrl":"https:\/\/affiliatehosting.ai\/wp-content\/plugins\/elementor-pro\/modules\/lottie\/assets\/animations\/default.json"}};
</script>
{/literal}
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor-pro/assets/js/frontend.min.js?ver=3.28.1" id="elementor-pro-frontend-js"></script>
<script src="https://affiliatehosting.ai/wp-content/plugins/elementor-pro/assets/js/elements-handlers.min.js?ver=3.28.1" id="pro-elements-handlers-js"></script>

<script src="{$WEB_ROOT}/templates/{$template}/js/override.js"></script>
		

		
</body>
</html>

