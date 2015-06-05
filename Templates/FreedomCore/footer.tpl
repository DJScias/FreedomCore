	<div id="footer">
		<div id="sitemap">
			<div class="column">
				<h3 class="bnet">
					<a href="/" tabindex="100" data-action="">Column 1</a>
				</h3>
				<ul>
					<li>
						<a href="/" data-action="Data Action">LI Test</a>
					</li>
				</ul>
			</div>

			<div class="column">
				<h3 class="games">
					<a href="/" tabindex="100" data-action="">Column 2</a>
				</h3>
				<ul>
					<li>
						<a href="/" data-action="Data Action">LI Test</a>
					</li>
				</ul>
			</div>

			<div class="column">
				<h3 class="account">
					<a href="/" tabindex="100" data-action="">Column 3</a>
				</h3>
				<ul>
					<li>
						<a href="/" data-action="Data Action">LI Test</a>
					</li>
				</ul>
			</div>

			<div class="column">
				<h3 class="support">
					<a href="/" tabindex="100" data-action="">Column 4</a>
				</h3>
				<ul>
					<li>
						<a href="/" data-action="Data Action">LI Test</a>
					</li>
				</ul>
			</div>

			<div class="column">
				<h3 class="jobs">
					<a href="/" tabindex="100" data-action="">Column 5</a>
				</h3>
				<ul>
					<li>
						<a href="/" data-action="Data Action">LI Test</a>
					</li>
				</ul>
			</div>
			<span class="clear"><!-- --></span>
		</div>
		<div class="lower-footer-wrapper">
			<div class="lower-footer">
				<div id="copyright">
					<a href="javascript:;" tabindex="100" id="change-language">
						<span>{if $Language == 'es'}
    Español
{elseif $Language == 'en'}
    English
{elseif $Language == 'ru'}
    Русский
{elseif $Language == 'pt'}
    Português
{elseif $Language == 'kr'}
    한국어
{elseif $Language == 'fr'}
    Français
{elseif $Language == 'de'}
    Deutsch
{elseif $Language == 'it'}
    Italiano
{/if}</span>
					</a>
					<span class="legal-links">
						<a onclick="return Core.open(this);" href="/about/termsofuse" tabindex="100" data-action="Footer - Terms of Use">{#Footer_ToS#}</a>
						<a onclick="return Core.open(this);" href="/about/legal/" tabindex="100" data-action="Footer - Legal">{#Footer_Legal#}</a>
						<a onclick="return Core.open(this);" href="/about/privacy" tabindex="100" data-action="Footer - Privacy Policy">{#Footer_PP#}</a>
						<a onclick="return Core.open(this);" href="/about/infringementnotice" tabindex="100" data-action="Footer - Copyright Infringement">{#Footer_Copyright#}</a>
						<a target="_blank" href="/about/contact" tabindex="100">{#Footer_Contacts#}</a>
					</span>
					© {$AppName}, 2015 г. {#Footer_Rights#}
				</div>
				<div id="international"></div>
				<div id="legal">
					<div id="legal-ratings" class="png-fix">
						<div class="product-rating mkrf-rating clearfix">
							<a href="http://mkrf.ru/" tabindex="1" rel="external" target="_blank">
								<img class="mkrf-logo" src="/Templates/{$Template}/images/legal/ratings/mkrf/12.png" alt="12+" width="65" height="72" />
							</a>
						</div>
					</div>
					<div id="blizzard" class="png-fix">
						<a href="/" tabindex="100"><img src="/Templates/{$Template}/images/logos/blizzard.png" alt="" /></a>
					</div>
					<span class="clear"><!-- --></span>
				</div>
			</div>
			<div id="marketing-trackers">
				<div class="marketing-cover"></div>
			</div>
		</div>

	</div>
</div>
    <script>
        //<![CDATA[
        var xsToken = '625ea365-1f2f-418d-bdab-6eff64de74bb';
        var jsonSearchHandlerUrl = '//{$smarty.server.HTTP_HOST}';
        //]]>
    </script>
    <script type="text/javascript" src="/Templates/{$Template}/js/menu.js"></script>
    {if $Page.type == 'blog' || $Page.type == 'community' || $Page.type == 'search' || $Page.bodycss == 'item-index'}
        <script type="text/javascript" src="/Templates/{$Template}/js/wow.js"></script>
    {/if}
    {if $Page.bodycss|strstr:"item-" && $Page.bodycss != 'item-index'}
        <script type="text/javascript" src="/Templates/{$Template}/js/wow.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/wiki/wiki.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/wiki/item.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/dataset.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/comments.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/utility/lightbox.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/utility/model-rotator.js"></script>
    {/if}
    <script type="text/javascript">
        //<![CDATA[
        $(function() {
            Menu.initialize('/data/menu.json');
        });
        //]]>
    </script>

    {if $Page.bodycss == 'realm-status'}
        <script type="text/javascript" src="/Templates/{$Template}/js/dataset.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/realm-status.js"></script>
    {/if}
    {if $Page.type == 'community' && $Page.bodycss == 'profile_page' || $Page.bodycss == 'achievement_page' || $Page.bodycss == 'reputation_page' || $Page.bodycss == 'professions_page' || $Page.bodycss == 'guild_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/character/profile.js"></script>
    {/if}
    {if $Page.type == 'community' && $Page.bodycss == 'profile_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/character/summary.js"></script>
    {/if}
    {if $Page.type == 'admin'}
        <script type="text/javascript" src="/Templates/{$Template}/js/freedomcore_admin.js"></script>
    {/if}
    {if $Page.type == 'search' || $Page.bodycss == 'guild_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/character/guild-tabard.js"></script>
    {/if}
    {if $Page.bodycss == 'achievement_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/character/achievement.js"></script>
    {/if}
    {if $Page.bodycss == 'reputation_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/dataset.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/character/reputation.js"></script>
    {/if}
    {if $Page.bodycss == 'professions_page'}
        <script type="text/javascript" src="/Templates/{$Template}/js/wiki/profession.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/character/profession.js"></script>
        <script type="text/javascript" src="/Templates/{$Template}/js/dataset.js"></script>
    {/if}

    <script type="text/javascript" src="/Templates/{$Template}/js/cms.min.js"></script>
    <script type="text/javascript" src="/Templates/{$Template}/js/freedomcore.js"></script>
    </body>
</html>