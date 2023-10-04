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
<div class="images-container {if $show_product_imgs == 2 && Context::getContext()->isMobile() != 1}images_lateral{/if}" data-numimgs="{count($product.images)}">

    {block name='product_cover'}

        {if count($product.images) > 1}

            {if $show_product_imgs == 1}
                {* Con miniaturas abajo *}
                <div id="splide_images_product_miniature" class="splide">
                    <div class="splide__track">
                        <div class="splide__list">
                            {foreach from=$product.images key=index item=image}
                                <div class="splide__slide product-cover">
                                    <picture>
                                            {if !empty($image.bySize.medium_default.sources.avif)}<source srcset="{$image.bySize.medium_default.sources.avif}" type="image/avif">{/if}
                                            {if !empty($image.bySize.medium_default.sources.webp)}<source srcset="{$image.bySize.medium_default.sources.webp}" type="image/webp">{/if}
                                            <img
                                            class="js-qv-product-cover img-fluid"
                                            src="{$image.bySize.medium_default.url}"
                                            {if !empty($product.default_image.legend)}
                                                alt="{$product.default_image.legend}"
                                                title="{$product.default_image.legend}"
                                            {else}
                                                alt="{$product.name}"
                                            {/if}
                                            itemprop="image"
                                            {if $index != 0}loading="lazy"{/if}
                                            width="{$image.bySize.medium_default.width}"
                                            height="{$image.bySize.medium_default.height}"
                                            >
                                    </picture>
                                    <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                        <i class="fa-solid fa-magnifying-glass zoom-in"></i>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>

                    <div class="product_flags">
                        {include file='catalog/_partials/product-flags.tpl'}
                    </div>
                </div>

                <div id="splide_images_product_secundary" class="splide">
                    <div class="splide__track">
                        <div class="splide__list">
                            {foreach from=$product.images item=image}
                                <div class="splide__slide">

                                    <picture>
                                        {if !empty($image.bySize.small_default.sources.avif)}<source srcset="{$image.bySize.small_default.sources.avif}" type="image/avif">{/if}
                                        {if !empty($image.bySize.small_default.sources.webp)}<source srcset="{$image.bySize.small_default.sources.webp}" type="image/webp">{/if}
                                        <img
                                        class="thumb js-thumb {if $image.id_image == $product.default_image.id_image} selected js-thumb-selected {/if}"
                                        data-image-medium-src="{$image.bySize.medium_default.url}"
                                        {if !empty($image.bySize.medium_default.sources)}data-image-medium-sources="{$image.bySize.medium_default.sources|@json_encode}"{/if}
                                        data-image-large-src="{$image.bySize.large_default.url}"
                                        {if !empty($image.bySize.large_default.sources)}data-image-large-sources="{$image.bySize.large_default.sources|@json_encode}"{/if}
                                        src="{$image.bySize.small_default.url}"
                                        {if !empty($image.legend)}
                                            alt="{$image.legend}"
                                            title="{$image.legend}"
                                        {else}
                                            alt="{$product.name}"
                                        {/if}
                                        loading="lazy"
                                        width="{$product.default_image.bySize.small_default.width}"
                                        height="{$product.default_image.bySize.small_default.height}"
                                        >
                                    </picture>

                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>

                <script>
                    document.addEventListener( 'DOMContentLoaded', function () {
                        var secondarySlider = new Splide( '#splide_images_product_secundary', {
                            fixedWidth  : {$product.default_image.bySize.small_default.width},
                            height      : {$product.default_image.bySize.small_default.height},
                            gap         : 4,
                            cover       : true,
                            isNavigation: true,
                            focus       : 'left',
                            pagination: false,
                            arrows: false,
                            breakpoints : {
                                '991': {
                                    fixedWidth  : {$product.default_image.bySize.small_default.width},
                                    height      : {$product.default_image.bySize.small_default.height},
                                }
                            },
                        } ).mount();

                        var primarySlider = new Splide( '#splide_images_product_miniature', {
                            perPage     : 1,
                            pagination: false,
                            arrows: true,
                        } );

                        primarySlider.sync( secondarySlider ).mount();
                    } );
                </script>

            {elseif $show_product_imgs == 2}
                {if Context::getContext()->isMobile() == 1}
                    {* En mobile por defecto sin miniaturas *}
                    <div id="splide_images_product" class="splide">
                        <div class="splide__track">
                            <div class="splide__list">
                                {foreach from=$product.images item=image}
                                    <div class="splide__slide product-cover">
                                        <picture>
                                                {if !empty($image.bySize.medium_default.sources.avif)}<source srcset="{$image.bySize.medium_default.sources.avif}" type="image/avif">{/if}
                                                {if !empty($image.bySize.medium_default.sources.webp)}<source srcset="{$image.bySize.medium_default.sources.webp}" type="image/webp">{/if}
                                                <img
                                                class="js-qv-product-cover img-fluid"
                                                src="{$image.bySize.medium_default.url}"
                                                {if !empty($product.default_image.legend)}
                                                    alt="{$product.default_image.legend}"
                                                    title="{$product.default_image.legend}"
                                                {else}
                                                    alt="{$product.name}"
                                                {/if}
                                                itemprop="image"
                                                {if $index != 0}loading="lazy"{/if}
                                                width="{$image.bySize.medium_default.width}"
                                                height="{$image.bySize.medium_default.height}"
                                                >
                                        </picture>
                                        <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                            <i class="fa-solid fa-magnifying-glass zoom-in"></i>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>

                        <div class="product_flags">
                            {include file='catalog/_partials/product-flags.tpl'}
                        </div>
                    </div>
                    <script>
                        document.addEventListener( 'DOMContentLoaded', function () {
                            new Splide( '#splide_images_product', {
                                perPage     : 1,
                                pagination: false,
                                arrows: true,
                            } ).mount();
                        } );
                    </script>
                {else}
                    {* Con miniaturas lateral *}
                    <div id="splide_images_product_secundary_lateral" class="splide">
                        <div class="splide__track">
                            <ul class="splide__list">
                                {foreach from=$product.images item=image}
                                    <li class="splide__slide">
                                        <picture>
                                            {if !empty($image.bySize.small_default.sources.avif)}<source srcset="{$image.bySize.small_default.sources.avif}" type="image/avif">{/if}
                                            {if !empty($image.bySize.small_default.sources.webp)}<source srcset="{$image.bySize.small_default.sources.webp}" type="image/webp">{/if}
                                            <img
                                            class="thumb js-thumb {if $image.id_image == $product.default_image.id_image} selected js-thumb-selected {/if}"
                                            data-image-medium-src="{$image.bySize.medium_default.url}"
                                            {if !empty($image.bySize.medium_default.sources)}data-image-medium-sources="{$image.bySize.medium_default.sources|@json_encode}"{/if}
                                            data-image-large-src="{$image.bySize.large_default.url}"
                                            {if !empty($image.bySize.large_default.sources)}data-image-large-sources="{$image.bySize.large_default.sources|@json_encode}"{/if}
                                            src="{$image.bySize.small_default.url}"
                                            {if !empty($image.legend)}
                                                alt="{$image.legend}"
                                                title="{$image.legend}"
                                            {else}
                                                alt="{$product.name}"
                                            {/if}
                                            loading="lazy"
                                            width="{$product.default_image.bySize.small_default.width}"
                                            height="{$product.default_image.bySize.small_default.height}"
                                            >
                                        </picture>
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                        <div class="hook_thumbnail">
                            {hook h='displayThumbnailProduct' product=$product category=$category}
                        </div>
                    </div>

                    <div id="splide_images_product_miniature_lateral" class="splide">
                        <div class="splide__track">
                            <div class="splide__list">
                                {foreach from=$product.images item=image}
                                    <div class="splide__slide product-cover">
                                        <picture>
                                                {if !empty($image.bySize.medium_default.sources.avif)}<source srcset="{$image.bySize.medium_default.sources.avif}" type="image/avif">{/if}
                                                {if !empty($image.bySize.medium_default.sources.webp)}<source srcset="{$image.bySize.medium_default.sources.webp}" type="image/webp">{/if}
                                                <img
                                                class="js-qv-product-cover img-fluid"
                                                src="{$image.bySize.medium_default.url}"
                                                {if !empty($product.default_image.legend)}
                                                    alt="{$product.default_image.legend}"
                                                    title="{$product.default_image.legend}"
                                                {else}
                                                    alt="{$product.name}"
                                                {/if}
                                                itemprop="image"
                                                {if $index != 0}loading="lazy"{/if}
                                                width="{$image.bySize.medium_default.width}"
                                                height="{$image.bySize.medium_default.height}"
                                                >
                                        </picture>
                                        <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                            <i class="fa-solid fa-magnifying-glass zoom-in"></i>
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>

                        <div class="product_flags">
                            {include file='catalog/_partials/product-flags.tpl'}
                        </div>
                    </div>

                    <script>
                        document.addEventListener( 'DOMContentLoaded', function () {
                            var secondarySlider = new Splide( '#splide_images_product_secundary_lateral', {
                                direction: 'ttb',
                                perPage     : 4,
                                pagination: false,
                                arrows: false,
                                gap         : 4,
                                cover       : true,
                                isNavigation: true,
                                fixedWidth  : {$product.default_image.bySize.small_default.width},
                                height      : {$product.default_image.bySize.small_default.height},
                                breakpoints : {
                                    '991': {
                                        fixedWidth  : {$product.default_image.bySize.small_default.width},
                                        height      : {$product.default_image.bySize.small_default.height},
                                        height   : '245px',
                                    }
                                },
                            } ).mount();

                            var primarySlider = new Splide( '#splide_images_product_miniature_lateral', {
                                perPage     : 1,
                                pagination: false,
                                arrows: true,
                            } ).mount();

                            primarySlider.sync( secondarySlider ).mount();
                        } );
                    </script>
                {/if}

            {else}
                {* Por defecto sin miniaturas *}
                <div id="splide_images_product" class="splide">
                    <div class="splide__track">
                        <div class="splide__list">
                            {foreach from=$product.images item=image}
                                <div class="splide__slide product-cover">
                                    <picture>
                                            {if !empty($image.bySize.medium_default.sources.avif)}<source srcset="{$image.bySize.medium_default.sources.avif}" type="image/avif">{/if}
                                            {if !empty($image.bySize.medium_default.sources.webp)}<source srcset="{$image.bySize.medium_default.sources.webp}" type="image/webp">{/if}
                                            <img
                                            class="js-qv-product-cover img-fluid"
                                            src="{$image.bySize.medium_default.url}"
                                            {if !empty($product.default_image.legend)}
                                                alt="{$product.default_image.legend}"
                                                title="{$product.default_image.legend}"
                                            {else}
                                                alt="{$product.name}"
                                            {/if}
                                            itemprop="image"
                                            {if $index != 0}loading="lazy"{/if}
                                            width="{$image.bySize.medium_default.width}"
                                            height="{$image.bySize.medium_default.height}"
                                            >
                                    </picture>
                                    <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                        <i class="fa-solid fa-magnifying-glass zoom-in"></i>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>

                    <div class="product_flags">
                        {include file='catalog/_partials/product-flags.tpl'}
                    </div>
                </div>
                <script>
                    document.addEventListener( 'DOMContentLoaded', function () {
                        new Splide( '#splide_images_product', {
                            perPage     : 1,
                            pagination: false,
                            arrows: true,
                        } ).mount();
                    } );
                </script>
            {/if}

        {else}
            {foreach from=$product.images item=image}
                <div class="product-cover">
                    <picture>
                            {if !empty($image.bySize.medium_default.sources.avif)}<source srcset="{$image.bySize.medium_default.sources.avif}" type="image/avif">{/if}
                            {if !empty($image.bySize.medium_default.sources.webp)}<source srcset="{$image.bySize.medium_default.sources.webp}" type="image/webp">{/if}
                            <img
                            class="js-qv-product-cover img-fluid"
                            src="{$image.bySize.medium_default.url}"
                            {if !empty($product.default_image.legend)}
                                alt="{$product.default_image.legend}"
                                title="{$product.default_image.legend}"
                            {else}
                                alt="{$product.name}"
                            {/if}
                            itemprop="image"
                            {if $index != 0}loading="lazy"{/if}
                            width="{$image.bySize.medium_default.width}"
                            height="{$image.bySize.medium_default.height}"
                            >
                    </picture>
                    <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                        <i class="fa-solid fa-magnifying-glass zoom-in"></i>
                    </div>
                </div>
            {/foreach}
        {/if}

    {/block}

</div>
{hook h='displayAfterProductThumbs'}
