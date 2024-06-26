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
<div id="js-product-list-header">
    {if $listing.pagination.items_shown_from == 1}
        <div class="block-category card-block">
            <div class="block-category-inner">
                <div>
                    <h1 class="h1">{$category.name}</h1>
                    {if $category.description}
                        <div id="category-description">{$category.description nofilter}</div>
                    {/if}
                </div>
                {if $category.image.bySize.category_default.url && $category_img == 1}
                    <div class="category-cover">
                        <img
                            src="{$category.image.bySize.category_default.url}"
                            alt="{if !empty($category.image.legend)}{$category.image.legend}{else}{$category.name}{/if}"
                            loading="lazy"
                            width="141"
                            height="180"
                        >
                    </div>
                {/if}
            </div>
        </div>

        {if $db_subcategories == 1}

            {if $subcategories}
            <div id="subcategories" class="splide">
                <div class="splide__track">
                    <ul class="clearfix splide__list">
                        {foreach from=$subcategories item=subcategory}
                            <li class="splide__slide">
                                <a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">
                                    {if $subcategory.image.bySize.category_default.url}
                                        <img src="{$subcategory.image.bySize.small_default.url}" alt="{$subcategory.name}" width="{$subcategory.image.bySize.category_default.width}" height="{$subcategory.image.bySize.category_default.height}" loading="lazy">
                                    {/if}
                                    {$subcategory.name|escape:'html':'UTF-8'}
                                </a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
            </div>
            {/if}

        {else}
            {if Context::getContext()->isMobile() == 1 || Context::getContext()->isTablet() == 1}
                <div id="subcategories">
                    <ul class="clearfix">
                        {foreach from=$subcategories item=subcategory}
                            <li>
                                <a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
            {/if}
        {/if}
    {/if}

    <script>
    document.addEventListener( 'DOMContentLoaded', function () {
        new Splide( '#subcategories', {
            perPage     : 5,
            pagination: false,
            lazyLoad: 'sequential',
            arrows: true,
            breakpoints: {
                575: {
                    perPage: 1,
                    padding: {
                        right: '30%',
                    },
                    arrows: false,
                    gap: '16px',
                },
                767: {
                    perPage: 2,
                    padding: {
                        right: '15%',
                    },
                    arrows: false,
                    gap: '16px',
                },
                992: {
                    perPage: 3,
                    padding: {
                        right: '10%',
                    },
                    arrows: false,
                    gap: '16px',
                },
                1200: {
                    perPage: 5,
                }
            },
        } ).mount();
    } );
</script>

    {hook h='displayBeforeProductList' category=$category}
</div>
