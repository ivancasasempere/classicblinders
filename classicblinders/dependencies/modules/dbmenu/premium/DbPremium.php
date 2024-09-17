<?php
/**
 * 2007-2021 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    DevBlinders <soporte@devblinders.com>
 * @copyright Copyright (c) DevBlinders
 * @license   Commercial license
 */

class DbMenuPremium extends ObjectModel
{
    public static function renderHelperFormPremium($fields_forms)
    {
        foreach($fields_forms['form']['input'] as $key => $input){
            $input['disabled'] = false;
            if(isset($input['class']) && $input['class'] == 'disabled'){
                $input['class'] = '';
            }
            $fields_forms['form']['input'][$key] = $input;
        }
        return $fields_forms;
    }

    public static function renderFormPremium($fields_forms)
    {
        foreach($fields_forms['input'] as $key => $input){
            $input['disabled'] = false;
            if(isset($input['class']) && $input['class'] == 'disabled'){
                $input['class'] = '';
            }
            $fields_forms['input'][$key] = $input;
        }
        return $fields_forms;
    }

    public static function getProductComments()
    {
        $db = \Db::getInstance();
        $return = [];

        $sql = "SELECT count(*) as total_comment, SUM(grade) as sum_comment
                FROM "._DB_PREFIX_."product_comment
                WHERE validate = 1 AND deleted = 0";
        $result = $db->getRow($sql);
        if($result['total_comment'] > 0){
            $total_comment = (int)$result['total_comment'];
            $avg_comment = round($result['sum_comment'] / $result['total_comment'], 1);
        } else {
            $total_comment = 0;
            $avg_comment = 0;
        }
        $return['total_comment'] = $total_comment;
        $return['avg_comment'] = $avg_comment;
        return $return;
    }

    public static function deleteCategory($delete)
    {
        if($delete == 1) {
            $db = \Db::getInstance();
            $sql = "TRUNCATE TABLE " . _DB_PREFIX_ . "dbmenu_list";
            $db->execute($sql);
            $sql = "TRUNCATE TABLE " . _DB_PREFIX_ . "dbmenu_list_lang";
            $db->execute($sql);
        }
    }

    public static function importCategory()
    {
        $root_category = Category::getRootCategory();
        $id_root = $root_category->id;
        self::insertCategory($id_root, 0);
    }

    public static function insertCategory($id_category, $id_parent)
    {
        $db = \Db::getInstance();
        $id_lang = Configuration::get('PS_LANG_DEFAULT');
        $id_shop = Configuration::get('PS_SHOP_DEFAULT');

        $categories = Category::getChildren($id_category, $id_lang, true);
        foreach($categories as $category){
            $db->insert('dbmenu_list', [
                'id_parent' => (int)$id_parent,
                'type' => pSQL('category'),
                'id_item' => (int)$category['id_category'],
                'active' => 1,
            ]);
            $last_id = $db->Insert_ID();
            $db->insert('dbmenu_list_lang', [
                'id_dbmenu_list' => (int)$last_id,
                'id_lang' => (int)$id_lang,
                'id_shop' => (int)$id_shop,
                'title' => pSQL($category['name']),
            ]);
            self::insertCategory((int)$category['id_category'], $last_id);
        }

    }



}