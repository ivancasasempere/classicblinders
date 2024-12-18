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
{block name='product_miniature_item'}
  <div>
    <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}"
      data-id-product-attribute="{$product.id_product_attribute}">
      <div class="thumbnail-container">
        {block name='product_thumbnail'}
          <a href="{$product.url}"
            class="thumbnail product-thumbnail {if count($product.images) > 1 && $custom_generic.second_img == true}multiple_img{/if}">

            {if $product.cover}
              <picture {if count($product.images) > 1 && $custom_generic.second_img == true} class="first_img" {/if}>
                {if !empty($product.cover.bySize.home_default.sources.avif)}
                <source srcset="{$product.cover.bySize.home_default.sources.avif}" type="image/avif">{/if}
                {if !empty($product.cover.bySize.home_default.sources.webp)}
                <source srcset="{$product.cover.bySize.home_default.sources.webp}" type="image/webp">{/if}
                <img src="{$product.cover.bySize.home_default.url}"
                  alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                  loading="lazy" data-full-size-image-url="{$product.cover.large.url}"
                  width="{$product.cover.bySize.home_default.width}" height="{$product.cover.bySize.home_default.height}" />
              </picture>


              {if count($product.images) > 1 && $custom_generic.second_img == true}
                <picture class="second_img">
                  {if !empty($product.images.1.bySize.home_default.sources.avif)}
                  <source srcset="{$product.images.1.bySize.home_default.sources.avif}" type="image/avif">{/if}
                  {if !empty($product.images.1.bySize.home_default.sources.webp)}
                  <source srcset="{$product.images.1.bySize.home_default.sources.webp}" type="image/webp">{/if}
                  <img src="{$product.images.1.bySize.home_default.url}"
                    alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                    loading="lazy" data-full-size-image-url="{$product.cover.large.url}"
                    width="{$product.images.1.bySize.home_default.width}"
                    height="{$product.images.1.bySize.home_default.height}" />
                </picture>
              {/if}
            {else}
              <picture>
                {if !empty($urls.no_picture_image.bySize.home_default.sources.avif)}
                <source srcset="{$urls.no_picture_image.bySize.home_default.sources.avif}" type="image/avif">{/if}
                {if !empty($urls.no_picture_image.bySize.home_default.sources.webp)}
                <source srcset="{$urls.no_picture_image.bySize.home_default.sources.webp}" type="image/webp">{/if}
                <img src="{$urls.no_picture_image.bySize.home_default.url}" loading="lazy"
                  width="{$urls.no_picture_image.bySize.home_default.width}"
                  height="{$urls.no_picture_image.bySize.home_default.height}" />
              </picture>
            {/if}
          </a>


        {/block}
        {include file='catalog/_partials/product-flags.tpl'}

      </div>

      {block name='product_name'}
        <a href="{$product.url}" class="h3 product-title">{$product.name}</a>
      {/block}
      <div class="product-description">

        {block name='product_reviews'}
          {hook h='displayProductListReviews' product=$product}
        {/block}

        {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="product-price-and-shipping">

              {if $product.has_discount}
                {hook h='displayProductPriceBlock' product=$product type="old_price"}

                <div class="prices_flex">
                  <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">{$product.price}</span>
                  <span class="regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">
                    <span>Antes</span>
                    <span class="block-regular-price">{$product.regular_price}</span>
                  </span>
                </div>
                {if $product.discount_type === 'percentage'}
                  <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
                {elseif $product.discount_type === 'amount'}
                  <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
                {/if}

              {else}
                <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">{$product.price}</span>
              {/if}

              {hook h='displayProductPriceBlock' product=$product type="before_price"}

              {hook h='displayProductPriceBlock' product=$product type='unit_price'}

              {hook h='displayProductPriceBlock' product=$product type='weight'}
            </div>
          {/if}
        {/block}

        {if $custom_generic.button_buy == 1}
          {if !$product.add_to_cart_url}
            <div class="add">
              <button class="btn btn-primary add-to-cart-category datatext" datatext="{$product.url|base64_encode}">
                {l s='View more' d='Shop.Theme.Actions'}
              </button>
            </div>
          {else}
            <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
              <input type="hidden" name="token" value="{$static_token}">
              <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
              <input type="hidden" name="id_customization" value="0" id="product_customization_id">
              <div class="add">
                <button class="btn btn-primary add-to-cart-category" data-button-action="add-to-cart" type="submit"
                  {if !$product.add_to_cart_url} disabled {/if}>
                  {l s='Add to cart' d='Shop.Theme.Actions'}
                </button>
              </div>
            </form>
          {/if}
        {/if}
      </div>



    </article>
  </div>
{/block}