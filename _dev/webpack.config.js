/**
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
 */
const webpack = require('webpack');
const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

let config = {
    entry: {
        theme: ['./js/theme.js', './css/theme.scss'],
        error: ['./css/error.scss'],
        brands: ['./css/brands.scss'],
        cart: ['./css/cart.scss'],
        category: ['./css/category.scss'],
        checkout: ['./css/checkout.scss'],
        contact: ['./css/contact.scss'],
        customer: ['./css/customer.scss'],
        home: ['./css/home.scss'],
        products: ['./css/products.scss'],
        sitemap: ['./css/sitemap.scss'],
        stores: ['./css/stores.scss'],
    },
    output: {
        path: path.resolve(__dirname, '../assets/js'),
        filename: '[name].js',
    },
    module: {
        rules: [
            {
                test: /\.js/,
                loader: 'babel-loader',
                options: {
                    plugins: ['minify-dead-code-elimination']
                }
            },
            {
                test: /\.scss$/,
                use:[
                    MiniCssExtractPlugin.loader,
                    'css-loader',
                    'postcss-loader',
                    'sass-loader',
                ],
            },
            /*{
                test: /.(png|woff(2)?|eot|otf|ttf|svg|gif)(\?[a-z0-9=\.]+)?$/,
                use: [
                    {
                        loader: 'file-loader',
                        options: {
                            name: '../img/[hash].[ext]',
                        },
                    },
                ],
            },*/
            {
                test: /\.css$/,
                use: [MiniCssExtractPlugin.loader, 'style-loader', 'css-loader', 'postcss-loader'],
            },
        ],
    },
    externals: {
        prestashop: 'prestashop',
        $: '$',
        jquery: 'jQuery',
    },
    plugins: [
        new MiniCssExtractPlugin({filename: path.join('..', 'css', '[name].css')}),
    ]
};


if (process.env.NODE_ENV === 'production') {
    config.optimization = {
        minimizer: [
            new UglifyJsPlugin({
                sourceMap: false,
                uglifyOptions: {
                    compress: {
                        sequences: true,
                        conditionals: true,
                        booleans: true,
                        if_return: true,
                        join_vars: true,
                        drop_console: true,
                    },
                    output: {
                        comments: false,
                    },
                }
            })
        ]
    }
}

module.exports = config;
