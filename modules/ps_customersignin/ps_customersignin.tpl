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
<div id="_desktop_user_info">
  <div class="user-info">
    {if $logged}
      <span
        class="open_account userinfo_header"
        data-toggle="modal"
        data-target="#userinfo_modal"
      >
            <svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" style="width:100%;height:100%;transform:translate3d(0,0,0);content-visibility:visible" viewBox="0 0 500 500"><defs><path id="b" class="primary design" style="display:none"/><path id="c" class="primary design" style="display:none"/><path id="e" class="primary design" style="display:none"/><path id="f" class="primary design" style="display:none"/><mask id="m" mask-type="alpha"><g filter="url(#a)"><path fill="#fff" d="M0 0h500v500H0z" opacity="0"/><use xmlns:ns1="http://www.w3.org/1999/xlink" ns1:href="#b"/></g></mask><mask id="l" mask-type="alpha"><use xmlns:ns2="http://www.w3.org/1999/xlink" ns2:href="#c"/></mask><mask id="j" mask-type="alpha"><g filter="url(#d)"><path fill="#fff" d="M0 0h500v500H0z" opacity="0"/><use xmlns:ns3="http://www.w3.org/1999/xlink" ns3:href="#e"/></g></mask><mask id="i" mask-type="alpha"><use xmlns:ns4="http://www.w3.org/1999/xlink" ns4:href="#f"/></mask><clipPath id="g"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="k"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="h"><path d="M0 0h500v500H0z"/></clipPath><filter id="a" width="100%" height="100%" x="0%" y="0%" filterUnits="objectBoundingBox"><feComponentTransfer in="SourceGraphic"><feFuncA tableValues="1.0 0.0" type="table"/></feComponentTransfer></filter><filter id="d" width="100%" height="100%" x="0%" y="0%" filterUnits="objectBoundingBox"><feComponentTransfer in="SourceGraphic"><feFuncA tableValues="1.0 0.0" type="table"/></feComponentTransfer></filter></defs><g clip-path="url(#g)"><g clip-path="url(#h)" style="display:block"><g fill="none" class="primary design" mask="url(#i)" style="display:none"><path/><path/></g><g mask="url(#j)" style="display:none"><path fill="none" class="primary design"/></g><path fill="none" class="primary design" style="display:none"/><g class="primary design" style="display:none"><path/><path/></g><g fill="#121330" class="primary design" style="display:block"><path d="M393.729 99.186c-40.41-38.327-93.11-58.74-148.726-57.491-55.616 1.25-107.483 24.371-145.81 64.573-38.327 40.41-58.74 93.11-57.491 148.726 1.25 55.616 24.371 107.483 64.573 145.81 39.16 37.286 89.777 57.491 143.519 57.491H255c55.616-1.25 107.483-24.371 145.81-64.573s58.74-93.11 57.49-148.726c-1.457-55.616-24.37-107.483-64.572-145.81zM254.376 427.05c-41.868 1.041-82.07-12.498-114.356-38.536 9.581-26.245 34.786-44.576 63.323-44.576h93.735c28.537 0 53.741 18.33 63.323 44.368-30.204 24.163-67.073 37.702-106.025 38.744zm129.563-61.449c-16.872-31.661-49.992-52.908-87.07-52.908h-93.735c-37.077 0-70.405 21.247-87.069 53.117-26.87-31.037-42.077-69.99-42.91-111.44-1.25-47.285 16.04-92.278 48.742-126.439 32.704-34.161 76.655-53.741 123.939-54.783h4.374c45.618 0 88.736 17.29 122.064 48.95 34.161 32.704 53.741 76.655 54.783 123.94 1.041 43.95-14.373 86.235-43.118 119.563z"/><path d="M255.21 104.185h-10.416c-37.285 0-67.697 30.412-67.697 67.698v41.66c0 37.285 30.412 67.697 67.697 67.697h62.49c8.54 0 15.623-7.082 15.623-15.622v-93.735c0-37.286-30.412-67.698-67.698-67.698zm36.452 145.81h-46.868c-19.996 0-36.452-16.456-36.452-36.452v-41.66c0-19.997 16.456-36.453 36.452-36.453h10.415c19.997 0 36.453 16.247 36.453 36.453v78.112z"/></g></g><g clip-path="url(#k)" opacity="0" style="display:block"><g fill="none" class="primary design" mask="url(#l)" style="display:none"><path/><path/></g><g mask="url(#m)" style="display:none"><path fill="none" class="primary design"/></g><path fill="none" class="primary design" style="display:none"/><g class="primary design" style="display:none"><path/><path/></g></g><g class="com" style="display:none"><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/></g></g></svg>
          <span class="icon_name">{l s='Hi %customerName%' sprintf=['%customerName%' => {$customerName}] d='Shop.Theme.Customeraccount'}</span>
      </span>
    {else}
      <span
        datatext="{$my_account_url|base64_encode}"
        class="datatext userinfo_header"
      >
            <svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" style="width:100%;height:100%;transform:translate3d(0,0,0);content-visibility:visible" viewBox="0 0 500 500"><defs><path id="b" class="primary design" style="display:none"/><path id="c" class="primary design" style="display:none"/><path id="e" class="primary design" style="display:none"/><path id="f" class="primary design" style="display:none"/><mask id="m" mask-type="alpha"><g filter="url(#a)"><path fill="#fff" d="M0 0h500v500H0z" opacity="0"/><use xmlns:ns1="http://www.w3.org/1999/xlink" ns1:href="#b"/></g></mask><mask id="l" mask-type="alpha"><use xmlns:ns2="http://www.w3.org/1999/xlink" ns2:href="#c"/></mask><mask id="j" mask-type="alpha"><g filter="url(#d)"><path fill="#fff" d="M0 0h500v500H0z" opacity="0"/><use xmlns:ns3="http://www.w3.org/1999/xlink" ns3:href="#e"/></g></mask><mask id="i" mask-type="alpha"><use xmlns:ns4="http://www.w3.org/1999/xlink" ns4:href="#f"/></mask><clipPath id="g"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="k"><path d="M0 0h500v500H0z"/></clipPath><clipPath id="h"><path d="M0 0h500v500H0z"/></clipPath><filter id="a" width="100%" height="100%" x="0%" y="0%" filterUnits="objectBoundingBox"><feComponentTransfer in="SourceGraphic"><feFuncA tableValues="1.0 0.0" type="table"/></feComponentTransfer></filter><filter id="d" width="100%" height="100%" x="0%" y="0%" filterUnits="objectBoundingBox"><feComponentTransfer in="SourceGraphic"><feFuncA tableValues="1.0 0.0" type="table"/></feComponentTransfer></filter></defs><g clip-path="url(#g)"><g clip-path="url(#h)" style="display:block"><g fill="none" class="primary design" mask="url(#i)" style="display:none"><path/><path/></g><g mask="url(#j)" style="display:none"><path fill="none" class="primary design"/></g><path fill="none" class="primary design" style="display:none"/><g class="primary design" style="display:none"><path/><path/></g><g fill="#121330" class="primary design" style="display:block"><path d="M393.729 99.186c-40.41-38.327-93.11-58.74-148.726-57.491-55.616 1.25-107.483 24.371-145.81 64.573-38.327 40.41-58.74 93.11-57.491 148.726 1.25 55.616 24.371 107.483 64.573 145.81 39.16 37.286 89.777 57.491 143.519 57.491H255c55.616-1.25 107.483-24.371 145.81-64.573s58.74-93.11 57.49-148.726c-1.457-55.616-24.37-107.483-64.572-145.81zM254.376 427.05c-41.868 1.041-82.07-12.498-114.356-38.536 9.581-26.245 34.786-44.576 63.323-44.576h93.735c28.537 0 53.741 18.33 63.323 44.368-30.204 24.163-67.073 37.702-106.025 38.744zm129.563-61.449c-16.872-31.661-49.992-52.908-87.07-52.908h-93.735c-37.077 0-70.405 21.247-87.069 53.117-26.87-31.037-42.077-69.99-42.91-111.44-1.25-47.285 16.04-92.278 48.742-126.439 32.704-34.161 76.655-53.741 123.939-54.783h4.374c45.618 0 88.736 17.29 122.064 48.95 34.161 32.704 53.741 76.655 54.783 123.94 1.041 43.95-14.373 86.235-43.118 119.563z"/><path d="M255.21 104.185h-10.416c-37.285 0-67.697 30.412-67.697 67.698v41.66c0 37.285 30.412 67.697 67.697 67.697h62.49c8.54 0 15.623-7.082 15.623-15.622v-93.735c0-37.286-30.412-67.698-67.698-67.698zm36.452 145.81h-46.868c-19.996 0-36.452-16.456-36.452-36.452v-41.66c0-19.997 16.456-36.453 36.452-36.453h10.415c19.997 0 36.453 16.247 36.453 36.453v78.112z"/></g></g><g clip-path="url(#k)" opacity="0" style="display:block"><g fill="none" class="primary design" mask="url(#l)" style="display:none"><path/><path/></g><g mask="url(#m)" style="display:none"><path fill="none" class="primary design"/></g><path fill="none" class="primary design" style="display:none"/><g class="primary design" style="display:none"><path/><path/></g></g><g class="com" style="display:none"><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/><path/></g></g></svg>
          <span class="icon_name">{l s='Iniciar sesión' d='Modules.Customersignin.Shop'}</span>
      </span>
    {/if}
  </div>
</div>


{if $logged}
<!-- Modal My Account -->
<div class="modal fade right" id="userinfo_modal" tabindex="-1" role="dialog" aria-labelledby="userinfo_modal_Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span class="modal-title" id="userinfo_modal_Label">{l s='Hi %customerName%' sprintf=['%customerName%' => {$customerName}] d='Shop.Theme.Customeraccount'}</span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal_item">
                    <span class="title">{l s='Account summary' d='Shop.Theme.Customeraccount'}</span>
                    <a class="item" href="{$urls.pages.my_account}">
                        <i class="fa-solid fa-user"></i>
                        {l s='My account' d='Shop.Theme.Customeraccount'}
                    </a>
                </div>
                <div class="modal_item">
                    <span class="title">{l s='My orders' d='Shop.Theme.Customeraccount'}</span>
                    <a class="item" href="{$urls.pages.history}">
                        <i class="fa-solid fa-list-ul"></i>
                        {l s='My orders' d='Shop.Theme.Customeraccount'}
                    </a>
                    <a class="item" href="{$urls.pages.discount}">
                        <i class="fa-solid fa-tag"></i>
                        {l s='Discount coupons' d='Shop.Theme.Customeraccount'}
                    </a>
                </div>
                <div class="modal_item">
                    <span class="title">{l s='Personal information' d='Shop.Theme.Customeraccount'}</span>
                    <a class="item" href="{$urls.pages.identity}">
                        <i class="fa-solid fa-address-book"></i>
                        {l s='Personal information' d='Shop.Theme.Customeraccount'}
                    </a>
                    <a class="item" href="{$urls.pages.addresses}">
                        <i class="fa-solid fa-location-dot"></i>
                        {l s='My Addresses' d='Shop.Theme.Customeraccount'}
                    </a>
                </div>
                <a class="btn btn-secondary close_session" href="{$logout_url}">{l s='Sign off' d='Shop.Theme.Customeraccount'}</a>
            </div>
        </div>
    </div>
</div>
{/if}
