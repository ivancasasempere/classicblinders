{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="_desktop_cart">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header blockcart_header">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}

        <svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" style="width:100%;height:100%;transform:translate3d(0,0,0);content-visibility:visible" viewBox="0 0 500 500"><defs><clipPath id="c"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="f"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="d"><path d="M0 0h500v500H0z"/></clipPath><filter id="a" width="100%" height="100%" x="0%" y="0%" filterUnits="objectBoundingBox"><feComponentTransfer in="SourceGraphic"><feFuncA tableValues="1.0 0.0" type="table"/></feComponentTransfer></filter><mask id="e" mask-type="alpha"><g filter="url(#a)"><use xmlns:ns1="http://www.w3.org/1999/xlink" ns1:href="#b"/></g></mask></defs><g clip-path="url(#c)"><g clip-path="url(#d)" style="display:block"><path fill="#121330" d="M434.342 151.893c-2.916-3.958-7.5-6.25-12.498-6.25l-256.834.209-3.125-16.04c-4.999-26.87-28.745-46.45-56.24-46.45H57.318c-8.54 0-15.623 7.082-15.623 15.623 0 8.54 7.082 15.622 15.623 15.622h48.325c12.498 0 23.33 8.957 25.621 21.247l5.416 28.745 24.371 145.393c1.25 7.5 7.707 13.123 15.414 13.123H348.73c25.413 0 48.118-17.08 54.992-41.66l33.12-115.814c1.457-4.791.416-9.79-2.5-13.748zm-60.616 121.022c-3.124 11.04-13.33 18.747-24.996 18.747H189.798l-19.164-114.565 230.588-.208-27.496 96.026zm-165.39 81.028c23.017 0 41.66 18.643 41.66 41.66 0 23.018-18.643 41.66-41.66 41.66-23.017 0-41.66-18.642-41.66-41.66 0-23.017 18.643-41.66 41.66-41.66zm135.187.209c23.017 0 41.66 18.643 41.66 41.66 0 23.017-18.643 41.66-41.66 41.66-23.017 0-41.66-18.643-41.66-41.66 0-23.017 18.643-41.66 41.66-41.66z" class="primary design" style="display:block"/></g></g></svg>
            {if $cart.products_count > 0}
                <span class="cart-products-count"></span>
            {/if}
        <span class="icon_name">{l s='Carrito' d='Modules.Shoppingcart.Shop'} ({$cart.products_count})</span>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
